package ru.rcaltd.account.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.rcaltd.account.model.DocumentId;
import ru.rcaltd.account.service.DocsService;
import ru.rcaltd.account.validator.DocsValidator;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
public class DocsController {

    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Temporal(TemporalType.DATE)

    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.registerCustomEditor(       Date.class,
                new CustomDateEditor(new SimpleDateFormat("dd/MM/yyyy"), true, 10));
    }
    @Autowired
    private DocsService docsService;

    @Autowired
    private DocsValidator docsValidator;

    @RequestMapping(value = "/gruz", method = RequestMethod.GET)
    public String gruz(Model model) {
        model.addAttribute("userForm", new DocumentId());

        return "gruz";
    }

    @RequestMapping(value = "/gruz", method = RequestMethod.POST)
    public String gruz(@ModelAttribute("userForm") DocumentId userForm, BindingResult bindingResult, Model model) {
        docsValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "gruz";
        }

        docsService.save(userForm);


        return "redirect:/gruz";
    }

}
