Mergecap.MembersRoute = Ember.Route.extend
  model: -> Mergecap.Member.find()

  setupController: (controller) ->
    client = new Faye.Client('http://mergecap.com:9292/faye')
    client.subscribe '/anyone', (data) =>
      @model()


