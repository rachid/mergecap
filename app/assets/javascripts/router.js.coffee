Mergecap.Router.map ->
  @route 'members'
  @resource 'teams', path: '/teams', ->
    @resource 'team', { path: ':team_id' }, ->
      @resource 'project', { path: ':project_id' }
  @route 'dashboard', { path: '/dashboard/:team_id' }
