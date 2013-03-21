Mergecap.MembersController = Ember.ArrayController.extend
  addEntry: ->
    user = new Gh3.User(@get('newEntryName'))
    user.fetch (err, user) =>
      if err || not user.login?
        @set('notFound', true)
      else
        avatar = "https://secure.gravatar.com/avatar/#{user.gravatar_id}?s=300"
        console.log avatar
        item = Mergecap.Member.createRecord(
          name: user.login
          mergecap: false
          avatar: avatar
        )
        item.get('store').commit()
        @set('notFound', false)
    @set('newEntryName','')

  setMergeCap: (item)->
    mergecap = if item.get('mergecap') then false else true
    @setEach('mergecap', false)
    item.set('mergecap', mergecap)
    item.get('store').commit()

  removeMember: (item)->
    item.deleteRecord()
    item.get('transaction').commit()
