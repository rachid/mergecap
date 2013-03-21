Mergecap.Team = DS.Model.extend
  name: DS.attr('string')
  projects: DS.hasMany('Mergecap.Project')
