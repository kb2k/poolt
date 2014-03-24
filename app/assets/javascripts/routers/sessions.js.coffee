class App.Routers.Sessions extends Backbone.Router

  initialize: (options) ->
    @sessions = new App.Collections.SessionsCollection()

  routes:
    "login": "newSession"

  newSession: ->
    @view = new App.Views.Sessions.New(collection: @sessions)
    contentView.swap(@view)