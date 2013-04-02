Mergecap.Member = DS.Model.extend
  mergecap: DS.attr('boolean')
  name: DS.attr('string')
  avatar: DS.attr('string')
  projectMember: DS.hasMany('Mergecap.ProjectMember')
