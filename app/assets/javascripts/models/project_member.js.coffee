Mergecap.ProjectMember = DS.Model.extend
  project: DS.belongsTo('Mergecap.Project')
  member: DS.belongsTo('Mergecap.Member')
  memberId: DS.attr('number')
  projectId: DS.attr('number')
