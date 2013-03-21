Mergecap.Router.map ->
  @route 'members', path: '/'
  @resource 'teams', ->
    @resource 'team', { path: 'team_id' }
