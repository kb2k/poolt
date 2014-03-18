class Poolt.Routers.UsersRouter extends Backbone.Router

  initialize: (options) ->
    @users = new Poolt.Collections.UsersCollection()
    #@users.reset options.users

  routes:
    "users/new"      : "newUser"
    "users"           : "index"
    "users/:id/edit" : "edit"
    "users/:id"      : "show"
    "users/.*"        : "index"

  newUser: ->
    @view = new Poolt.Views.Users.NewView(collection: @users)
    $("#content").html(@view.render().el)

  index: ->
    @view = new Poolt.Views.Users.IndexView(users: @users)
    $("#content").html(@view.render().el)

  show: (id) ->
    user = @users.get(id)

    @view = new Poolt.Views.Users.ShowView(model: user)
    $("#content").html(@view.render().el)

  edit: (id) ->
    user = @users.get(id)

    @view = new Poolt.Views.Users.EditView(model: user)
    $("content").html(@view.render().el)
