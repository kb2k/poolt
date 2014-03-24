App.Views.Sessions ||= {}

class App.Views.Sessions.New extends Backbone.View

  template: JST["templates/sessions/new"]

  events:
    "submit #new-session": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (session) =>
        @model = session
        window.location.hash = "/#{@model.id}"

      error: (session, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this