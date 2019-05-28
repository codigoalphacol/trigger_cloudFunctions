const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();

var msgData;

exports.newSubscriberNotification = functions.firestore
    .document('client/{clientId}')
    .onCreate((snap, context) => {
        msgData = snap.data();
        admin.firestore().collection('devicestokens').get().then((snap) => {
            var tokens = [];
            if (snap.empty) {
                console.log('No Device');
            } else {
                for (var token of snap.docs) {
                    tokens.push(token.data().devtoken);
                }
                var payload = {
                    "notification": {
                        "title": "From " + msgData.name,
                        "body": "Motive " + msgData.motive,
                        "sound": "default"
                    },
                    "data": {
                        "sendername": msgData.name,
                        "message": msgData.motive
                    }
                }
                return admin.messaging().sendToDevice(tokens, payload).then((response) => {
                    console.log('Pushed them all');
                }).catch((err) => {
                    console.log(err);
                });
            }
        });
    });