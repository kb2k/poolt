class Poolt.Models.Session extends Backbone.Model
  paramRoot: 'session'

  defaults:
    email: null
    password: null

class Poolt.Collections.SessionsCollection extends Backbone.Collection
  model: Poolt.Models.Session
  url: '/sessions'
