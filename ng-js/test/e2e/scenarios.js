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


        it('should filter application list as user types into the search box', function() {
            expect(repeater('#apps_navigation a').count()).toBe(30);

            input('query').enter('account');

            expect(repeater('#apps_navigation a').count()).toBe(3);

            input('query').enter('unknown');

            expect(repeater('#apps_navigation a').count()).toBe(0);
        });

        it('should filter application list as user select a tag', function() {
            expect(repeater('#apps_navigation a').count()).toBe(30);

            select('tag').option('Banking');

            expect(repeater('#apps_navigation a').count()).toBe(17);

            select('tag').option('IT');

            expect(repeater('#apps_navigation a').count()).toBe(2);
        });
    });
});
