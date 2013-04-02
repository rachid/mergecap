Mergecap.TeamController = Ember.Controller.extend
  createProject: (name) ->
    record = Mergecap.Project.createRecord(
      name: name,
      team: this.get('content')
    )
    record.get('store').commit()

    record.one 'error', =>
      @set 'errors', record.errors
    record.one 'valid', =>
      @set 'errors', record.errors
