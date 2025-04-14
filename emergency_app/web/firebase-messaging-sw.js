importScripts('https://www.gstatic.com/firebasejs/8.4.1/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.4.1/firebase-messaging.js');

   /*Update with yours config*/
  const firebaseConfig = {
    apiKey: "AIzaSyAsx8wqPvMs7hdTTeDdO8qUBmiqLcuKp5M",
    authDomain: "emergency-app-2d5d7.firebaseapp.com",
    projectId: "emergency-app-2d5d7",
    storageBucket: "emergency-app-2d5d7.appspot.com",
    messagingSenderId: "619428390108",
    appId: "1:619428390108:web:c5cc220a5b3c010a17c019",
    measurementId: "G-SL6ZRHS2VR"
 };
  firebase.initializeApp(firebaseConfig);
  const messaging = firebase.messaging();

  /*messaging.onMessage((payload) => {
  console.log('Message received. ', payload);*/
  messaging.onBackgroundMessage(function(payload) {
    console.log('Received background message ', payload);

    const notificationTitle = payload.notification.title;
    const notificationOptions = {
      body: payload.notification.body,
    };

    self.registration.showNotification(notificationTitle,
      notificationOptions);
  });