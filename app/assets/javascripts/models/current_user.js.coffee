class App.Models.CurrentUser extends Backbone.Model

  initialize: ->
    #@listenTo App.Vent, 'user:logged_in', @login
    @listenTo App.Vent, 'user:logged_out', @logout

  #login (user) ->
  #  @set user

  logout: ->
    session = new App.Models.Session({id: @id})
    session.destroy
      success: ->
        delete @id
        delete @attributes.id
        gon.currentUser = null