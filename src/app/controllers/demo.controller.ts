module myApp {
    'use strict';

    class MyAppController {
        static $inject = ['myApp.infinite-scroll'];

        images = [1, 2, 3, 4, 5, 6, 7, 8];

        loadMore = function():void {

            var last = this.images[this.images.length - 1];
            for (var i = 1; i <= 8; i++) {
                this.images.push(last + i);
            }
        };
    }

    angular.module('myApp')
           .controller('myApp.MyAppController', MyAppController);
}

// 
// var myApp = angular.module('myApp', ['infinite-scroll']);
// myApp.controller('DemoController', function($scope) {
//   
// });
// }