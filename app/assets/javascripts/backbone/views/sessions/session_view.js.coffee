Poolt.Views.Sessions ||= {}

class Poolt.Views.Sessions.SessionView extends Backbone.View
  template: JST["backbone/templates/sessions/session"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
