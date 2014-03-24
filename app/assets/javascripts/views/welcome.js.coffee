class App.Views.Welcome extends Backbone.View

  template: JST['templates/welcome']

  render : ->
    $(@el).html(@template())
    @