import * as admin from 'firebase-admin'

admin.initializeApp()
admin.firestore().settings({
  ignoreUndefinedProperties: true,
})

exports.contact = require('./Trigger/contactTrigger')