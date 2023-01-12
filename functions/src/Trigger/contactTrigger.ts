import * as admin from 'firebase-admin'
import * as functions from 'firebase-functions'
import { CLOUD_REGION } from '../constants'

// const db = admin.firestore()

const pushMessage = (fcmToken: string, text: string) => ({
  notification: {
      title: '新しいオファーを受信しました。',
      body:  `${text}`,
  },
  apns: {
      headers: {
          'apns-priority': '10'
      },
      payload: {
          aps: {
              badge: 9999,
              sound: 'default'
          }
      }
  },
  data: {
      data: 'test',
  },
  token: fcmToken
});

/**
  - event
      - path: public/contact/v1/{doc}
      1. isMatchedがfalseに変わったら
      2. 指定の距離まで近づいたら（isMatechedがtrueになったら）
  - func
      1. 相手に通知を送る
          1. 通知文言
      2. 相手に通知を送る
          1. 通知文言
*/
exports.startContactNoticicationTrace = functions.region(CLOUD_REGION).firestore
  .document('public/contact/v1/{doc}')
  .onUpdate(async (change, context) => { 
    const before = change.before.data()
    const after = change.after.data()
    const beIsMatched = before['isMatched']
    const afIsMatched = after['isMatched']
    // TODO: 送信元の特定(別途contact classに変数追加する)
    const fcmToken = after['sentUser']['tokenId']
    const name = after['sentUser']['name']
    const word = after['word']
    // const
    if (beIsMatched !== afIsMatched) { 
      var title = '';
      if (afIsMatched === true) {
        title = `${name}さんが${word}そうです。`
        console.log(title)
      } else if (afIsMatched === false) { 
        title = `${name}さんがまもなく到着されます。`
        console.log(title)
      }

      if (title !== '') { 
        admin.messaging().send(pushMessage(fcmToken, title))
      }
    }
    
  })