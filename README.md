# Smart-Parking
My senior project for B.S. in computer science at CSUDH.

This project was created to try and solve the problem of hard to find parking at CSUDH. The intent was to be able to pull up an app where it tells you the open parking spots so you don't have to drive up and down every isle looking for a spot. Especially when you are in a rush or late for class. The video demo below is footage from Lot 7 during a busy morning when cars are just starting to come in for class.

For this project I used OpenCV to track each parking spot. Unfortunately due to time constraints, I was unable to learn enough OpenCV object detection to automatically segment out each parking space so I manually selected each parking spot for this demo. It then sent this data to Firebase Firestore to update an Android app in real time. 

Go to link for the video demo.
https://www.youtube.com/watch?v=Vp_tNLuceOk&t=150s
