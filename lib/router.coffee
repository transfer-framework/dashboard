# http://hr.discovermeteor.com/chapters/pagination/

Router.configure
   layoutTemplate: 'appBody'
   waitOn: () ->
      Meteor.subscribe('processes')

Router.map () ->
   this.route 'dashboard',
      path: '/',
      action: () ->
         this.render()

   this.route 'processShow',
      path: '/processes/:_id'
      onBeforeAction: () ->
         this.processesHandle = Meteor.subscribe('processes', this.params._id)
         this.logsHandle = Meteor.subscribe('logs', { processId: this.params._id })

         return
      data: () ->
         Processes.findOne(this.params._id)
      action: () ->
         this.render()

   this.route 'processIndex',
      path: '/processes'
      onBeforeAction: () ->
         this.processesHandle = Meteor.subscribe('processes')

         return
      data: () ->
         Processes.find({}, {
            sort: {
               created: -1
            }
         })
      action: () ->
         this.render()

