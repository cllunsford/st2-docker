'use strict';
angular.module('main')
  .constant('st2Config', {

    hosts: [{
      name: 'docker-compose',
      url: '//192.168.99.100:9101',
      auth: true
    }]

  });
