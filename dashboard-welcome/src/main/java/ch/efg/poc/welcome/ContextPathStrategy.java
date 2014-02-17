package ch.efg.poc.welcome;

import org.osgi.framework.BundleContext;
import org.springframework.osgi.context.DelegatedExecutionOsgiBundleApplicationContext;
import org.springframework.osgi.extender.support.DefaultOsgiApplicationContextCreator;
import org.springframework.osgi.extender.support.scanning.ConfigurationScanner;

/**
 * igor on 16.02.14.
 */
public class ContextPathStrategy extends DefaultOsgiApplicationContextCreator {
    public ContextPathStrategy() {
        super();
        System.out.println("ch.efg.poc.welcome.ContextPathStrategy.ContextPathStrategy");
    }

    @Override
    public DelegatedExecutionOsgiBundleApplicationContext createApplicationContext(BundleContext bundleContext) throws Exception {
        System.out.println("ch.efg.poc.welcome.ContextPathStrategy.createApplicationContext");
        return super.createApplicationContext(bundleContext);
    }

    @Override
    public void setConfigurationScanner(ConfigurationScanner configurationScanner) {
        System.out.println("ch.efg.poc.welcome.ContextPathStrategy.setConfigurationScanner");
        super.setConfigurationScanner(configurationScanner);
    }
}
