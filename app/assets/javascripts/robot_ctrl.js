(function() {
  'use strict';
  angular.module('app').controller('robotCtrl', function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/robots.json').then(function(response) {
        $scope.robots = response.data;
      });
    };

    $scope.addRobot = function(newName, newJob, newImage) {
      if (newName && newBio && newImage) {
        $scope.robots.push({ name: newName, 
                       profession: newJob, 
                            image: newImage });
        $scope.newName = '';
        $scope.newJob = ''
        $scope.newImage = '';
      };
    };

    $scope.deleteRobot = function(index) {
                            $scope.robots.splice(index, 1);
                          };

    $scope.toggleOrder = function(attribute) {
      if(attribute != $scope.orderAttribute) {
        $scope.descending = false;
      } else {
        $scope.descending = !$scope.descending;
      }
    };

    window.$scope = $scope;
  });
})();