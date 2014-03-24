#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.App =

  Models: {}
  Collections: {}
  Views: {}
  Routes: {}

  initialize: ->
    @tabsView()

  tabsView: ->
    view = new App.Views.Tabs
    $("#tabs").html(view.render().el)