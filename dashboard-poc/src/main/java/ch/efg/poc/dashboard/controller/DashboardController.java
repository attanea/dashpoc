package ch.efg.poc.dashboard.controller;

import ch.efg.poc.dashboard.api.IApplication;
import ch.efg.poc.dashboard.api.IDashboardConfig;
import ch.efg.poc.dashboard.model.ApplicationDTO;
import ch.efg.poc.dashboard.model.DashboardConfigurationModel;
import ch.efg.poc.dashboard.service.DashboardConfigService;
import org.osgi.framework.BundleContext;
import org.osgi.service.cm.ConfigurationAdmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Set;
import java.util.TreeSet;

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

        ModelAndView mav = new ModelAndView("dashboard");

        mav.addObject("applications", new Integer[]{0, 1,});
/*
		Bundle[] bundles = bundleContext.getBundles();
        mav.addObject("bundles", new Integer[]{0, 1,});

        Configuration[] configurations = configurationAdmin.listConfigurations(null);
        mav.addObject("configurations", configurations);
*/
        return mav;
    }

    /**
     * Provides Dashboard configuration as JSON
     *
     * @param userName name of user which configuration should e provided
     * @return JSON representation of dashboard's configuration
     */
    @RequestMapping(value = "/config/{userName}", method = RequestMethod.GET)
    public @ResponseBody DashboardConfigurationModel getDashboardConfiguration(@PathVariable String userName) {

        System.out.println("Try to get configuration for " + userName);

        IDashboardConfig dashboardConfig = dashboardConfigService.getDashboardConfigurationForUser(userName);

        Set<ApplicationDTO> applicationDTOs = new TreeSet<ApplicationDTO>();
        for (IApplication application : dashboardConfig.getApplications()) {
            ApplicationDTO applicationDTO = new ApplicationDTO(application.getName());
            applicationDTO.setFilters(application.getTags());
            applicationDTO.setDescription(application.getDescription());

            applicationDTO.setFavourite(dashboardConfig.getFavouriteApplicationNames().contains(application.getName()));

            applicationDTOs.add(applicationDTO);
        }

        DashboardConfigurationModel dashboardConfigurationModel = new DashboardConfigurationModel();
        dashboardConfigurationModel.setApplications(applicationDTOs);
        dashboardConfigurationModel.setFilters(dashboardConfig.getFilters());

        return dashboardConfigurationModel;
    }

    @RequestMapping(value = "/welcome")
    public ModelAndView welcome() {
        return new ModelAndView("welcome");
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
