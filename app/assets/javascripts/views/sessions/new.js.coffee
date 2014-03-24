App.Views.Sessions ||= {}

class App.Views.Sessions.New extends Backbone.View

  template: JST["templates/sessions/new"]

  initialize: ->
    @model = new @collection.model()

    @listenTo @model, "error", @renderError
    @listenTo @model, "sync", @triggerLoggenIn

  triggerLoggenIn: ->
    App.Vent.trigger "user:logged_in", @model.toJSON()

  events:
    "click button": "login"

  login: (e) ->
    e.preventDefault()

    @$('.alert').hide()

    @model.set email: @$('#email').val()
    @model.set password: @$('#password').val()

    @model.save()

  render: ->
    $(@el).html(@template())
    @

  renderError: ->
    @$('.alert').html("Неверное имя пользователя или пароль").show()