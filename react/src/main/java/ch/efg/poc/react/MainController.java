package ch.efg.poc.react;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * igor on 14.02.14.
 */
@Controller
public class MainController {

    @RequestMapping(value = "/")
    public ModelAndView welcome(){
        return new ModelAndView("index");
    }

}
