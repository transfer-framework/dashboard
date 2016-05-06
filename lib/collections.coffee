@Logs = new Mongo.Collection "logs"

@Processes = new Mongo.Collection "processes",
  transform: (document) ->
    document.logsObj = Logs.find
      process_id: document._id,
      { limit: 10 }

    return document

@Manifests = new Mongo.Collection "manifests"