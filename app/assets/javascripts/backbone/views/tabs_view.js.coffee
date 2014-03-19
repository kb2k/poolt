class Poolt.Views.TabsView extends Backbone.View

  template : JST["backbone/templates/tabs"]

  render : ->
    $(@el).html(@template({currentUser: gon.currentUser}))
    @