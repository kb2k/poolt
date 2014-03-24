class App.Routers.Main extends Backbone.Router

  routes:
    '': 'welcome'

  welcome: ->
    App.contentView.swap(new App.Views.Welcome)