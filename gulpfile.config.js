'use strict';
var GulpConfig = (function () {
    function gulpConfig() {
        this.source = './src/';
        this.sourceApp = this.source + 'app/';

        this.tsOutputPath = this.source + '../_site/js/app/';
        this.allJavaScript = [this.source + '../_site/js/app/**/*.js'];
        this.allTypeScript = this.sourceApp + '/**/*.ts';
        this.tsViews = this.sourceApp + 'views/*';

        this.typings = './tools/typings/';
        this.libraryTypeScriptDefinitions = './tools/typings/**/*.ts';
    }
    return gulpConfig;
})();
module.exports = GulpConfig;
