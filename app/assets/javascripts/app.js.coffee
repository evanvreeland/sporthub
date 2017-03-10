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
    $scope.user = {
      name: "Johnny Miller",
      height: "5' 7''",
      weight: "100",
      email: 'littlejohnny@email.com'
    }
    $scope.newSport
    $scope.sportPlayed
    $scope.organization
    $scope.playtime
    $scope.organizations = [{name: "Little Giants", members: ["Timmy", "Bobby", "Frank"]}, {name: "Tiny Warriors", members: ["Joe", "Miguel"]}]
    $scope.showInfoForm = false;
    $scope.showSportForm = false;
    $scope.showOrganizationForm = false;
    $scope.showPlaytimeForm = false;
    $scope.addSport = (sport)->
      $scope.sports[sport] = 0
      $scope.newSport = ''
    $scope.addOrganization = (organization)->
      $scope.organizations.push({name: organization, playtime: 0})
      $scope.newOrganization = ''
    $scope.addPlaytime = (sport, playtime)->
      $scope.sports[sport] = parseInt($scope.sports[sport]) + parseInt(playtime)
      $scope.playtime = ''
      $scope.sportPlayed = ''
])
