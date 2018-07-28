package ru.rcaltd.account.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ru.rcaltd.account.model.Document_id;
import ru.rcaltd.account.service.DocsService;

@Component
public class DocsValidator implements Validator {
    @Autowired
    private DocsService docsService;

    @Override
    public boolean supports(Class<?> aClass) {
        return Document_id.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Document_id document_id = (Document_id) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "insurant", "NotEmpty");
        if (document_id.getInsurant().length() < 6 || document_id.getInsurant().length() > 32) {
            errors.rejectValue("insurant", "Size.userForm.username");
        }
        if (docsService.findById(document_id.getId()) != null) {
            errors.rejectValue("insurant", "Duplicate.userForm.username");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shipper", "NotEmpty");
        if (document_id.getShipper().length() < 6 || document_id.getShipper().length() > 32) {
            errors.rejectValue("shipper", "Size.userForm.username");
        }
        if (docsService.findById(document_id.getId()) != null) {
            errors.rejectValue("shipper", "Duplicate.userForm.username");
        }
    }
}
