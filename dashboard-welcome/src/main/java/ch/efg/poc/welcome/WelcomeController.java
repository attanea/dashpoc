package ch.efg.poc.welcome;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * igor on 14.02.14.
 */
@Controller
public class WelcomeController {

    @RequestMapping(value = "/")
    public ModelAndView welcome(){
        System.out.println("ch.efg.poc.welcome.WelcomeController.welcome");
        return new ModelAndView("welcome");
    }

}
