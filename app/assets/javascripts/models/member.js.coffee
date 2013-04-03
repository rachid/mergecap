Mergecap.Member = DS.Model.extend
  mergecap: DS.attr('boolean')
  name: DS.attr('string')
  avatar: DS.attr('string')
  team_id: DS.attr('number')
  team: DS.belongsTo('Mergecap.Team')
  project_members: DS.hasMany('Mergecap.ProjectMember')
  projects: DS.hasMany('Mergecap.Project')
