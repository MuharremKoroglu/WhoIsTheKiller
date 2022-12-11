//
//  ViewController.swift
//  WhoIsTheKiller
//
//  Created by Muharrem Köroğlu on 10.12.2022.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var killerImageView: UIImageView!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var emotionLabel: UILabel!
    
    var choosenImage = CIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func changeButton(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        picker.allowsEditing = true
        present(picker, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        killerImageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
        
        if let ciImage = CIImage(image: killerImageView.image!) {
            choosenImage = ciImage
        }
        peopleRecognizer(image: choosenImage, model: GenderNet().model, label: genderLabel, type: "GENDER")
        peopleRecognizer(image: choosenImage, model: AgeNet().model, label: ageLabel, type: "AGE")
        peopleRecognizer(image: choosenImage, model: CNNEmotions().model, label: emotionLabel , type: "EMOTION")
        
    }
    
    func peopleRecognizer (image : CIImage, model: MLModel, label : UILabel, type : String) {
        
        if let model = try? VNCoreMLModel(for: model) {
            let request = VNCoreMLRequest(model: model) { vnrequest, error in
                if error != nil {
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Something went wrong")
                }else{
                    if let results = vnrequest.results as? [VNClassificationObservation] {
                        if results.count > 0 {
                            let bestResult = results.first
                            DispatchQueue.main.async {
                                let confidenceLevel = (bestResult?.confidence ?? 0) * 100
                                let rounded = Int(confidenceLevel * 100) / 100
                                if let bestIdentifier = bestResult?.identifier as? String {
                                    label.text = "\(type): \(bestIdentifier) (%\(rounded))"
                                }
                            }
                        }
                    }
                }
            }
            let handler = VNImageRequestHandler(ciImage: image)
            DispatchQueue.global(qos: DispatchQoS.QoSClass.userInteractive).async {
                do{
                    try handler.perform([request])
                }catch{
                    print("Error")
                }
            }
        }
    }
    
    func makeAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let button = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel)
        alert.addAction(button)
        present(alert, animated: true)
    }
    


}

