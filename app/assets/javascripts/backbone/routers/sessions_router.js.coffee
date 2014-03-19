class Poolt.Routers.SessionsRouter extends Backbone.Router
  initialize: (options) ->
    @sessions = new Poolt.Collections.SessionsCollection()
    # @sessions.reset options.sessions

  routes:
    "login"      : "newSessions"

  newSessions: ->
    @view = new Poolt.Views.Sessions.NewView(collection: @sessions)
    $("#content").html(@view.render().el)
