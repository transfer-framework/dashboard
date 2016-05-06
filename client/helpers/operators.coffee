Template.registerHelper 'equals', (a, b) ->
    a == b

Template.registerHelper 'empty', (value) ->
    value == undefined || value == null

Template.registerHelper 'not_empty', (value) ->
    value != undefined && value != null && value != ""
