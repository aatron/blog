module demoApp {
    'use strict';

    class DocumentariesController {
        documentaries: IDocumentary[] = null;

        static $inject = ['demoApp.dataService'];
        constructor(dataService: DataService) {
            dataService.getDocumentaries()
              .then((docs: IDocumentary[]) => {
                 this.documentaries = docs;
              });
        }

        filtersX: boolean = false;
        filtersCompany: string = '';
        filtersSearch: string = '';
        illProp: string = null;

        updateCompany = function ():void {
            if (this.filtersX) {
                this.filtersCompany = 'x';
            } else {
                this.filtersCompany = '';
            }
        };

        updateArray = function ():void {
            this.documentaries.filter(function(item){
                return matchesSearch([item.title]);
            });
        };

    }

    function matchesSearch(inputs) {
        for (var i = 0; i < inputs.length; i++) {
            if ( !isNullOrWhitespace(inputs[i]) && inputs[i].indexOf(this.filtersSearch)) {
                return true;
            }
        }

        return false;
    }

    function isNullOrWhitespace( input ) {
       if (typeof input === 'undefined' || input == null) { return true; }

        return input.replace(/\s/g, '').length < 1;
    }

    angular.module('demoApp')
           .controller('demoApp.DocumentariesController', DocumentariesController);
}