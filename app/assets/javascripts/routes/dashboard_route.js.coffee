Mergecap.DashboardRoute = Ember.Route.extend
  setupController: (controller) ->
    client = new Faye.Client('http://mergecap.com:9292/faye')
    client.subscribe "/dashboard/#{@context.id}", (data) =>
      Mergecap.Project.find()
