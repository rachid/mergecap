Mergecap.Project = DS.Model.extend
  name: DS.attr('string')
  team: DS.belongsTo('Mergecap.Team')
  team_id: DS.attr('number')
