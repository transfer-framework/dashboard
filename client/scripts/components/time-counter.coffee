class @TimeCounter
  constructor: (@$element, started, finished) ->
    @started = new Date(started)

    if finished
      @finished = new Date(finished)
    else
      @finished = new Date()

  calculate: () ->

    ms = @finished - @started;

    seconds = ms / 1000;
    minutes = seconds / 60;
    seconds = Math.floor(seconds % 60);
    hours = minutes / 60;
    minutes = Math.floor(minutes % 60);
    hours = Math.floor(hours % 24);

    time = ""

    if (hours > 0)
      time += hours + "h "

    time += minutes + "m "
    time += seconds + "s "

    return time
