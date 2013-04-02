Mergecap.DashboardController = Ember.ObjectController.extend
  setMergecap: (item) ->
    user = Mergecap.User.find(1)
    if item.get('mergecap') == user.get('name')
      item.set('mergecap', '')
    else
      item.set('mergecap', user.get('name'))
    item.get('store').commit()

