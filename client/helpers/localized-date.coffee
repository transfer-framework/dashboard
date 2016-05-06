Template.registerHelper "localizedDateAndTime", (date) ->
  if (date)
    moment(date).format('l LT');
