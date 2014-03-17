class Poolt.Models.User extends Backbone.Model
  paramRoot: 'user'

  defaults:
    firstname: null
    middlename: null
    lastname: null

class Poolt.Collections.UsersCollection extends Backbone.Collection
  model: Poolt.Models.User
  url: '/users'
