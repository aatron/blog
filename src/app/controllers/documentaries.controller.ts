module demoApp {
    'use strict';

    class DocumentariesController {
        documentaries: IDocumentary[] = null;

        static $inject = ['demoApp.dataService'];
        constructor(dataService: DataService) {
            dataService.getDocumentaries()
              .then((docs: IDocumentary[]) => {
                 this.documentaries = docs;
                 alert('yo');
              });
        }
    }

    angular.module('demoApp')
           .controller('demoApp.DocumentariesController', DocumentariesController);

}
