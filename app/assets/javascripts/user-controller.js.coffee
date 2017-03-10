controllers = angular.module('controllers',[])
controllers.controller('UserController', [ '$scope', 'user'
  ($scope, user)->
    $scope.sports = {
      'Baseball': 460,
      'Basketball': 120,
      'Soccer': 34
    }
    # $scope.user = {
    #   name: 'Johnny Miller',
    #   height: '5ft. 7in.',
    #   weight: '100',
    #   email: 'littlejohnny@email.com'
    # }
    $scope.user = user.userData
    $scope.organizations = [{name: 'Little Giants', members: ['Timmy', 'Bobby', 'Frank']}, {name: 'Tiny Warriors', members: ['Joe', 'Miguel']}]

    $scope.newSport
    $scope.sportPlayed
    $scope.organization
    $scope.playtime

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
