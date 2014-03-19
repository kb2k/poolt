Poolt.Views.Sessions ||= {}

class Poolt.Views.Sessions.IndexView extends Backbone.View
  template: JST["backbone/templates/sessions/index"]

  initialize: () ->
    @options.sessions.bind('reset', @addAll)

  addAll: () =>
    @options.sessions.each(@addOne)

  addOne: (session) =>
    view = new Poolt.Views.Sessions.SessionView({model : session})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(sessions: @options.sessions.toJSON() ))
    @addAll()

    return this
