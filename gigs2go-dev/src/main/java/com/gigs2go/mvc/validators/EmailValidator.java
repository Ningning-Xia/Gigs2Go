/**
 * 
 */
package com.gigs2go.mvc.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.gigs2go.model.entities.Email;

/**
 * @author tim
 * 
 */
@Component
public class EmailValidator implements Validator {

    /*
     * (non-Javadoc)
     * 
     * @see org.springframework.validation.Validator#supports(java.lang.Class)
     */
    public boolean supports ( Class<?> clazz ) {
        return Email.class.equals( clazz );
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.springframework.validation.Validator#validate(java.lang.Object,
     * org.springframework.validation.Errors)
     */
    public void validate ( Object target, Errors errors ) {
        Email email = (Email)target;
        String value = email.getValue();
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "value", "field.required" );
        // TODO - regexp
        if ( !value.contains( "@" ) || value.contains( " " ) ) {
            errors.rejectValue( "value", "email.invalid" );
        }
    }

}
