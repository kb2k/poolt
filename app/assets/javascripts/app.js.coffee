#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.App =

  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Vent: _.clone(Backbone.Events)

  initialize: ->
    App.contentView = new App.Views.Content

    # Current User
    App.currentUser = new App.Models.CurrentUser(gon.currentUser)

    # Routers
    new App.Routers.Main
    new App.Routers.Sessions

    Backbone.history.start()

    @tabsView()

  tabsView: ->
    view = new App.Views.Tabs
    $("#tabs").html(view.render().el)