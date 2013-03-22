Mergecap.ProjectsController = Ember.ArrayController.extend
  delete: (item) ->
    item.deleteRecord()
    item.get('store').commit()

