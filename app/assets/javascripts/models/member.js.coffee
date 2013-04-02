Mergecap.Member = DS.Model.extend
  mergecap: DS.attr('boolean')
  name: DS.attr('string')
  avatar: DS.attr('string')
  team_id: DS.attr('number')
  team: DS.belongsTo('Mergecap.Team')
  projectMember: DS.hasMany('Mergecap.ProjectMember')
