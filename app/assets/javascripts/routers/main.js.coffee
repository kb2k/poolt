class App.Routers.Main extends Backbone.Router

  routes:
    '': 'welcome'

  welcome: ->
    contentView.swap(new App.Views.Welcome)