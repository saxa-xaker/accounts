package ru.rcaltd.account.web;

import ru.rcaltd.account.model.Document_id;

import ru.rcaltd.account.service.DocsService;
import ru.rcaltd.account.validator.DocsValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class DocsController {
    @Autowired
    private DocsService docsService;

    @Autowired
    private DocsValidator docsValidator;


    @RequestMapping(value = "/gruz", method = RequestMethod.GET)
    public String gruz(Model model) {
        model.addAttribute("userForm", new Document_id());

        return "gruz";
    }

    @RequestMapping(value = "/gruz", method = RequestMethod.POST)
    public String gruz(@ModelAttribute("userForm") Document_id userForm, BindingResult bindingResult, Model model) {
        docsValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "gruz";
        }

        docsService.save(userForm);


        return "redirect:/gruz";
    }

}
