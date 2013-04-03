Mergecap.Project = DS.Model.extend
  name: DS.attr('string')
  mergecap: DS.attr('string')
  team_id: DS.attr('number')
  team: DS.belongsTo('Mergecap.Team')
  members: DS.hasMany('Mergecap.Member')
  project_members: DS.hasMany('Mergecap.ProjectMember', embedded: true)

  didCreate: ->
    @trigger('valid')

  becameInvalid: ->
    @trigger('error')

  mergeCapMember:(->
    @get('members').toArray().find (item) =>
      Mergecap.Member.find(item.id).get('name') == @get('mergecap')
  ).property('mergecap')

