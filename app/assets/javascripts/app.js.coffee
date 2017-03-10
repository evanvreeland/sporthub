sporthub = angular.module('sporthub',[
  'templates',
  'ngRoute',
  'controllers'
])
.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'UserController'
      )
])

controllers = angular.module('controllers',[])
controllers.controller("UserController", [ '$scope',
  ($scope)->
    $scope.sports = [{name: "Baseball", playtime: 460}, {name: "Basketball", playtime: 120}, {name: "Soccer", playtime: 390}]
    $scope.organizations = [{name: "Little Giants", members: ["Timmy", "Bobby", "Frank"]}, {name: "Tiny Warriors", members: ["Joe", "Miguel"]}]
])
