Mergecap.ProjectController = Ember.ObjectController.extend
  addEntry: ->
    @userName = @get('content').get('newEntryName')
    @findUser(@userName)
    @set('newEntryName','')

  findUser: (name) ->
    if item = Mergecap.Member.find(name: name)
      item.addObserver 'isLoaded', =>
        if item.objectAt(0)
          member = Mergecap.Member.find(item.objectAt(0).id)
          @addMemberToProject(member)
        else
          @getUserFromGithub(name)
      item
    else
      @getUserFromGithub(name)

  getUserFromGithub: (name) ->
    user = new Gh3.User(name)
    user.fetch (err, user) =>
      if err || not user.login?
        @set('notFound', true)
      else
        avatar = "https://secure.gravatar.com/avatar/#{user.gravatar_id}?s=300"
        item = Mergecap.Member.createRecord(
          name: user.login
          mergecap: false
          avatar: avatar
        )
        item.addObserver 'id', =>
          member = Mergecap.Member.find(item.id)
          @addMemberToProject(member)
        @get('store').commit()

  addMemberToProject: (member) ->
    @get('content').get('project_members').pushObject(
      Mergecap.ProjectMember.createRecord(member: member)
    )
    @get('store').commit()


