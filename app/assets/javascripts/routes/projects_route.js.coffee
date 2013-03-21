Mergecap.ProjectsRoute = Ember.Route.extend
  model: -> Mergecap.Project.find()

  setupController: ->
    console.log @
