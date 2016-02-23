module demoApp {

    export interface ISource {
        title: string;
        url: string;
    }

    export interface IDocumentary {
        title: string;
        total: number;
        dateAdded: Date;
        recommendation: Boolean;
        sources: ISource[];
    }

    export class DataService {

        static $inject = ['$http'];
        constructor(private $http: ng.IHttpService) {}

        getDocumentaries(): ng.IPromise<IDocumentary[]> {
            return this.$http.get('/data/documentaries.json').then(response => {
                return response.data;
            });
        }
    }

    angular.module('demoApp')
        .service('demoApp.dataService', DataService);
}