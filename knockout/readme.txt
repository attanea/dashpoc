====To install in karaf server====

feature:repo-add mvn:ch.efg.poc/ko-js/1.0-SNAPSHOT/xml/features
feature:install ko-js

====To refresh in karaf=====
feature:uninstall dashboard-poc-2
feature:repo-refresh mvn:ch.efg.poc/dashboard-poc/1.0-SNAPSHOT/xml/features
feature:install dashboard-poc-2