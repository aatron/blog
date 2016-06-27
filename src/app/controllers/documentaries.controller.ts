module demoApp {
    'use strict';

    class DocumentariesController {
        documentaries: IDocumentary[] = null;

        // Pagination in controller
        currentPage = 0;
        pageSize = 10;
        setCurrentPage = function(currentPage) {
            this.currentPage = currentPage;
        };
        getNumberAsArray = function (num) {
            return new Array(num);
        };

        numberOfPages = function() {
            return Math.ceil(this.documentaries.length / this.pageSize);
        };

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
            var __this = this;
            this.documentaries.filter(function(item){
                // return matchesSearchText([item.title]);
                for (var i = 0; i < [item.title].length; i++) {
                    if ( //!isNullOrWhitespace([item.title][i]) && 
                        [item.title][i].indexOf(__this.filtersSearch)) {
                        return true;
                    }
                }

                return false;
            });
        };

        tagsEmphasis = function(tags: string[], sub: string):string {
            // var tagsWithEmphasis: string[] = new Array();
            var tagsWithEmphasis = new Array<string>();

            if ( sub !== undefined ) {
                for (var i = 0; i < tags.length; i++) {
                    tagsWithEmphasis.push(tags[0].replace(new RegExp(sub, 'g'), '<em>' + sub + '</em>'));
                }
            } else {
                tagsWithEmphasis = tags;
            }

            return  tagsWithEmphasis.join(', ');
        };
    }

    function isNullOrWhitespace ( input: string ) {
        if (typeof input === 'undefined' || input == null) { return true; }

        return input.replace(/\s/g, '').length < 1;
    };

    function matchesSearchText (inputs: string):boolean {
        for (var i = 0; i < inputs.length; i++) {
            if ( !isNullOrWhitespace(inputs[i]) && inputs[i].indexOf(this.filtersSearch)) {
                return true;
            }
        }

        return false;
    };

    angular.module('demoApp')
           .controller('demoApp.DocumentariesController', DocumentariesController);
}