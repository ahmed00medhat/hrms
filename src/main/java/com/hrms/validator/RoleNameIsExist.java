package com.hrms.validator;

import static java.lang.annotation.ElementType.TYPE;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Target({ ElementType.METHOD, ElementType.FIELD, ElementType.ANNOTATION_TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = RoleNameIsExistValidator.class)
public @interface RoleNameIsExist {

	String message() default "Role.form.name.exist";

	Class<?>[] groups() default {};

	public abstract Class<? extends Payload>[] payload() default {};

}
