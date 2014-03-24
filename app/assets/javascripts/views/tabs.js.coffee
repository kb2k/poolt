class App.Views.Tabs extends Backbone.View

  template : JST["templates/tabs"]

  render : ->
    $(@el).html(@template({currentUser: gon.currentUser}))
    @