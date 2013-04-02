Mergecap.Team = DS.Model.extend
  projects: DS.hasMany('Mergecap.Project')
  members: DS.hasMany('Mergecap.Member')
  project_members: DS.hasMany('Mergecap.ProjectMember')
  name: DS.attr('string')
  slug: DS.attr('string')


