Mergecap.Team = DS.Model.extend
  projects: DS.hasMany('Mergecap.Project', { embedded: true })
  name: DS.attr('string')

