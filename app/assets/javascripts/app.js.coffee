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
    $scope.showSportForm = false;
    $scope.showOrganizationForm = false;
    $scope.showPlaytimeForm = false;
    $scope.addSport = (sport)->
      $scope.sports.push({name: sport, playtime: 0})
      console.log($scope.sports)
      $scope.sport = ''
    $scope.addOrganization = (organization)->
      $scope.organizations.push({name: organization, playtime: 0})
      $scope.organization = ''
])
