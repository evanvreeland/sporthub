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
    $scope.sports = {
      "Baseball": 460,
      "Basketball": 120,
      "Soccer": 34
    }
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
    $scope.addPlaytime = (sport, playtime)->
      console.log(sport)
      console.log(playtime)
      console.log($scope.sports)
      console.log($scope.sports[sport])
      # $scope.sports[sport.name]['playtime'] += playtime
      $scope.sport.playtime = ''
])
