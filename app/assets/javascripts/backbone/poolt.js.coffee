#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Poolt =

  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

  initialize: ->
    new Poolt.Routers.UsersRouter
    new Poolt.Routers.ProjectsRouter

    Backbone.history.start()

    @tabsView()

  tabsView: ->
    view = new Poolt.Views.TabsView
    $("#tabs").html(view.render().el)