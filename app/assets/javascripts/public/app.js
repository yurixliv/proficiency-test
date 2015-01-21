(function(){
'use strict';

var app = angular.module('App', []);

app.controller("MainCtrl", MainCtrl);

MainCtrl.$inject = ['$scope'];

function MainCtrl ($scope) {

}

setTimeout(function() {
 $('.fade-alert').fadeOut();
}, 1500 );

}());