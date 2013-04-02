Mergecap.TeamsController = Ember.ArrayController.extend
  addEntry: ->
    item = Mergecap.Team.createRecord(
      name: @get('newEntryName')
    )
    @set('newEntryName','')
    item.get('store').commit()

  createProject: (name, team) ->
    record = Mergecap.Project.createRecord(
      name: name,
      team: team
    )
    record.get('store').commit()

    record.one 'error', =>
      @set 'errors', record.errors
      debugger
    record.one 'valid', =>
      @set 'errors', record.errors

  deleteItem: (item) ->
    item.deleteRecord()
    item.get('transaction').commit()
    @transitionTo('teams.index')
