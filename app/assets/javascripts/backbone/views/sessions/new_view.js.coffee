Poolt.Views.Sessions ||= {}

class Poolt.Views.Sessions.NewView extends Backbone.View
  template: JST["backbone/templates/sessions/new"]

  events:
    "submit #new-sessions": "save"

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
      success: (sessions) =>
        @model = sessions
        window.location.hash = "/#{@model.id}"

      error: (sessions, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
