class App.Views.Welcome extends Backbone.View

  template: JST['templates/welcome']

  initialize: ->
    @listenTo App.Vent, 'user:logged_in', @swapContent

  render : ->
    $(@el).html(@template())
    @

  swapContent: ->
    App.contentView.swap(@)