Template.registerHelper 'counter', (started, finished) ->
    counter = new TimeCounter($('.elapsed-time'), started, finished)
    return counter.calculate()
