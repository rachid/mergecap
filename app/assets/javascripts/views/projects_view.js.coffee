Mergecap.NewProjectView = Ember.View.extend
  templateName: 'add_project'
  tagName: 'form'

  submit: ->
    team = @get('_parentView').get('content')
    @get('controller').send('createProject', @get('newProjectName'), team)
    @set('newProjectName', "")
    false

