Mergecap.TeamsController = Ember.ArrayController.extend
  addEntry: ->
    item = Mergecap.Team.createRecord(
      name: @get('newEntryName')
    )
    @set('newEntryName','')
    item.get('store').commit()

  deleteItem: (item) ->
    item.deleteRecord()
    item.get('transaction').commit()

  addProjectEntry: (item) ->
    record = Mergecap.Project.createRecord(
      team: item,
      name: @get('newProjectName')
    )
    @set('newProjectName','')
    record.get('store').commit()

