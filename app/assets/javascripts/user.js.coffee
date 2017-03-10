sporthub = angular.module('sporthub')
sporthub.factory 'user', [ ()->
  data = {
    userData: {
      name: 'Johnny Miller',
      height: '5ft. 7in.',
      weight: '100',
      email: 'littlejohnny@email.com'
    }
  }
  return data;
]
