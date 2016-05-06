Meteor.publish 'processes', () ->
  Processes.find({})

Meteor.publish 'logs', () ->
  Logs.find({})

