sporthub = angular.module('sporthub',[
  'templates',
  'ngRoute',
  'controllers'
])
.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: 'index.html'
        controller: 'UserController'
      )
])

controllers = angular.module('controllers',[])
