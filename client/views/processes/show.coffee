Template.processShow.helpers
  logs: (processId) ->
    return Logs.find(
      {
        process_id: processId,
        message: new RegExp(Session.get('process.logs.filter'))
      },
      {
        sort: { 'created': Session.get('process.logs.sorting') }
      }
    );

Template.processShow.events
  'click .sort-controls .btn': (event) ->

    target = $(event.target)

    $('.sort-controls .btn').removeClass('active');
    target.addClass('active')

    Session.set("process.logs.sorting", target.data('direction'))

  'keyup .filter-control': (event) ->

    target = $(event.target)

    Session.set("process.logs.filter", target.val())
