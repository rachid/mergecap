Mergecap.Project = DS.Model.extend
  team: DS.belongsTo('Mergecap.Team')
  name: DS.attr('string')
  teamId: DS.attr('number')
