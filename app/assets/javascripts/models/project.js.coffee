Mergecap.Project = DS.Model.extend
  name: DS.attr('string')
  teamId: DS.attr('number')
  team: DS.belongsTo('Mergecap.Team')
