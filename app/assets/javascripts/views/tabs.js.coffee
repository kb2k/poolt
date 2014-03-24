class App.Views.Tabs extends Backbone.View

  template : JST["templates/tabs"]

  initialize: ->
    @listenTo App.Vent, 'tabs:rerender', @render

  render : ->
    $(@el).html(@template({currentUser: gon.currentUser}))
    @