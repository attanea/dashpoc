'use strict';

/* http://docs.angularjs.org/guide/dev_guide.e2e-testing */

describe('Dashboard App', function() {

  it('should redirect index.html to index.html#/', function() {
    browser().navigateTo('/index.html');
    expect(browser().location().url()).toBe('/');
  });

    describe('Applications view', function() {

        beforeEach(function() {
            browser().navigateTo('/index.html');
        });

        it('Some applications are flagged as favorites other are not', function() {
            expect(repeater('.fa-star').count()).toBe(2);

            expect(repeater('.fa-star-o').count()).toBe(28);
        });


        it('should filter application list as user types into the search box', function() {
            expect(repeater('#apps_navigation a').count()).toBe(30);

            input('query').enter('account');

            expect(repeater('#apps_navigation a').count()).toBe(3);

            input('query').enter('unknown');

            expect(repeater('#apps_navigation a').count()).toBe(0);
        });

        it('should filter application list as user select a tag', function() {
            expect(repeater('#apps_navigation a').count()).toBe(30);

            select('tag').option('banking');

            expect(repeater('#apps_navigation a').count()).toBe(17);

            select('tag').option('it');

            expect(repeater('#apps_navigation a').count()).toBe(2);
        });
    });
});
