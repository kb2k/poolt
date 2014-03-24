class App.Routers.Sessions extends Backbone.Router

  initialize: (options) ->
    @sessions = new App.Collections.SessionsCollection()

  routes:
    "login": "login"
    "logout": "logout"

  login: ->
    @view = new App.Views.Sessions.New(collection: @sessions)
    App.contentView.swap(@view)

  logout: ->
    App.Vent.trigger 'user:logged_out'