Mergecap.NewProjectView = Ember.View.extend
  templateName: 'add_member'
  tagName: 'form'

  submit: ->
    team = @get('_parentView').get('content')
    @get('controller').send('createMember', @get('newMemberName'), project)
    @set('newMemberName', "")
    false

