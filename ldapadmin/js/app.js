'use strict';

/* App Module */

angular.module('ldapadmin', ['ldapadminServices']).
  config(['$routeProvider', function($routeProvider) {
  $routeProvider.
      when('/users', {templateUrl: 'partials/users-list.html',   controller: UsersListCtrl}).
      when('/users/new', {templateUrl: 'partials/user-edit.html', controller: UserCreateCtrl}).
      when('/users/:userId', {templateUrl: 'partials/user-edit.html', controller: UserEditCtrl}).
      otherwise({redirectTo: '/users'});
}]);
