Mergecap.MembersRoute = Ember.Route.extend
  model: -> Mergecap.Member.find()

  setupController: ->
    client = new Faye.Client('http://mergecap.com:9292/faye')
    client.subscribe '/anyone', (data) ->
      Mergecap.Member.find()


