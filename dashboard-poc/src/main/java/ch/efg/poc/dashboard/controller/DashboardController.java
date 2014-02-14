package ch.efg.poc.dashboard.controller;

import ch.efg.poc.dashboard.api.IDashboardConfig;
import ch.efg.poc.dashboard.service.DashboardConfigService;
import org.osgi.framework.BundleContext;
import org.osgi.service.cm.ConfigurationAdmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/" )
public class DashboardController {

    @Autowired
    BundleContext bundleContext;

    @Autowired
    ConfigurationAdmin configurationAdmin;

    @Autowired
    private DashboardConfigService dashboardConfigService;

    @RequestMapping(method = {RequestMethod.GET})
    public ModelAndView index() throws Exception {

        ModelAndView mav = new ModelAndView("index");

        mav.addObject("applications", new Integer[]{0, 1,});
/*
		Bundle[] bundles = bundleContext.getBundles();
        mav.addObject("bundles", new Integer[]{0, 1,});

        Configuration[] configurations = configurationAdmin.listConfigurations(null);
        mav.addObject("configurations", configurations);
*/
        return mav;
    }

    //RESt should be here
    @RequestMapping(value = "/config")
    public IDashboardConfig getDashboardConfiguration(final String userName) {

        return dashboardConfigService.getDashboardConfigurationForUser(userName);
    }

    public BundleContext getBundleContext() {
        return bundleContext;
    }

    public void setBundleContext(BundleContext bundleContext) {
        this.bundleContext = bundleContext;
    }

    public ConfigurationAdmin getConfigurationAdmin() {
        return configurationAdmin;
    }

    public void setConfigurationAdmin(ConfigurationAdmin configurationAdmin) {
        this.configurationAdmin = configurationAdmin;
    }
}
