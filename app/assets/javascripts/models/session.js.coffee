class App.Models.Session extends Backbone.Model

  paramRoot: 'session'
  urlRoot: '/sessions'

  defaults:
    email: null
    password: null

class App.Collections.SessionsCollection extends Backbone.Collection

  model: App.Models.Session
  url: '/sessions'