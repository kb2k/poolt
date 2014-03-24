class App.Views.Tabs extends Backbone.View

  template : JST["templates/tabs"]

  initialize: ->
    @listenTo App.Vent, 'tabs:rerender', @render

  render : ->
    console.log App.currentUser

    $(@el).html(@template({currentUser: App.currentUser}))
    @