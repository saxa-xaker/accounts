package ru.rcaltd.account.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ru.rcaltd.account.model.ArbitrID;
import ru.rcaltd.account.service.ArbitrService;

@Component
public class ArbitrValidator implements Validator {
    @Autowired
    public ArbitrService arbitrService;

    @Override
    public boolean supports(Class<?> aClass) {
        return ArbitrID.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ArbitrID arbitrID = (ArbitrID) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "arbitr_uprav_id", "NotEmpty");
        if (arbitrID.getArbitr_uprav_id().length() < 6 || arbitrID.getArbitr_uprav_id().length() > 32) {
            errors.rejectValue("arbitr_uprav_id", "Size.userForm.username");
        }
    }
}