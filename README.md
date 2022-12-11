# Who Is The Killer?
### Hi there, I'm Muharrem <img src = "https://raw.githubusercontent.com/MartinHeinz/MartinHeinz/master/wave.gif" width = "42"> 
#### Thank You for taking the time to view my repository 

## <h2> About This App <img src = "https://c.tenor.com/JsoERRQcZqYAAAAi/thumbs-up-joypixels.gif" width = "42"></h2>
This application is an image classification application. That's why it was coded with the CoreML library, which is already available in Swift. Here we used three machine learning models. The first of these predict gender, the second age, and the third predicts people's mood. We started the process by first writing a request. In this way, we request the data we want from the machine learning model. Here we primarily used the VNCoreMLModel class to get the model. Then we created a closure for the information that will come to us from the model using the VNCoreMLRequest class. Then we cast the returned data with VNClassificationObservation. The class shows us the accuracy of the returned value with the confidence method. It also gives the best return value with the first method. We printed these values in our Label structures and showed them to the user. But we should be careful that the returned truth values come to us as an unreadable number. Therefore, we converted the incoming number into a readable value with a small mathematical operation. After the request process is finished, we need to create a handler. We used the VNImageRequestHandler class for this. What we need to pay attention to here is that we use the DispatchQueue structure with a global. This process helps us to prioritize processes that are waiting in the background. In this way, we get the returned data quickly. One point that should be mentioned is that we do these operations in the do-try-catch block. Because these actions can throw errors at any time and cause the application to crash. We used the ImagePicker class so that the user could select a photo. In this way, the user can select the desired photo from the photo library. Finally, instead of writing three different functions for code readability and optimization, we wrote a function and gave parameters to this function. Thus, we can run three different machine-learning models over a single function.

<h2> Used Technologies <img src = "https://media2.giphy.com/media/QssGEmpkyEOhBCb7e1/giphy.gif?cid=ecf05e47a0n3gi1bfqntqmob8g9aid1oyj2wr3ds3mg700bl&rid=giphy.gif" width = "42"> </h2>
<div class="row">
      <div class="column">
<img width ='72px' src 
     ='https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/swift-icon.svg'>
  </div>
</div>

<h2> Used Language <img src = "https://media.giphy.com/media/Zd6jPg8hcp4Q3vrvjo/giphy.gif" width = "42"> </h2>
<div class="row">
      <div class="column">
<img width ='82px' src 
     ='https://raw.githubusercontent.com/MuharremKoroglu/Bitcoin/main/Flag_of_the_United_Kingdom.svg'>
  </div>
</div>

<h2> Images <img src = "https://media2.giphy.com/media/psneItdLMpWy36ejfA/source.gif" width = "62"> </h2>
  <div class="column">



https://user-images.githubusercontent.com/68854616/206915955-e6c8d789-47e6-417d-ab91-193f45ec0805.mp4




  </div>
<h2> Connect with me <img src='https://raw.githubusercontent.com/ShahriarShafin/ShahriarShafin/main/Assets/handshake.gif' width="100"> </h2>
<a href = 'mailto:muharremkoroglu245@gmail.com'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/gmail-logo-2561.svg"/></a> &nbsp;
<a href = 'https://www.linkedin.com/in/muharremkoroglu/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/rahulbanerjee26/githubAboutMeGenerator/main/icons/linked-in-alt.svg"/></a> &nbsp;
<a href = 'https://muharremkoroglu.medium.com/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/rahulbanerjee26/githubAboutMeGenerator/main/icons/medium.svg"/></a> &nbsp;
<a href="https://www.instagram.com/m.koroglu99/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="_._.adam._"  width="32px" align= 'center' /></a> &nbsp;
<a href = 'https://synta-x.com/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/internet-svgrepo-com%20(2).svg"/></a> &nbsp;




















