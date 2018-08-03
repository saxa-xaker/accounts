package ru.rcaltd.account.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.rcaltd.account.model.ArbitrID;
import ru.rcaltd.account.service.ArbitrService;
import ru.rcaltd.account.validator.ArbitrValidator;


@Controller
public class ArbitrController {

    @Autowired
    private ArbitrService arbitrService;

    @Autowired
    private ArbitrValidator arbitrValidator;

    @RequestMapping(value = "/arbitr", method = RequestMethod.GET)
    public String arbitr(Model model) {
        model.addAttribute("userForm", new ArbitrID());

        return "arbitr";
    }

    @RequestMapping(value = "/arbitr", method = RequestMethod.POST)
    public String arbitr(@ModelAttribute("userForm") ArbitrID userForm, BindingResult bindingResult, Model model) {
        arbitrValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "arbitr";
        }

        arbitrService.save(userForm);


        return "redirect:/arbitr";
    }

}
