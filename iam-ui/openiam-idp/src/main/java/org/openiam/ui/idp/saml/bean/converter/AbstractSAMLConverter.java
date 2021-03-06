package org.openiam.ui.idp.saml.bean.converter;

import java.util.LinkedList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.openiam.am.srvc.constants.AuthAttributeDataType;
import org.openiam.am.srvc.dto.AuthProvider;
import org.openiam.am.srvc.dto.AuthProviderAttribute;
import org.openiam.ui.bean.converter.BeanConverter;
import org.openiam.ui.idp.saml.model.SAMLUploadToken;
import org.springframework.beans.factory.annotation.Value;

public abstract class AbstractSAMLConverter<T, S> implements BeanConverter<T, S> {
	
	@Value("${org.openiam.defaultManagedSysId}")
	protected String defaultManagedSysId;


	private static final String VALUE_DELIMITER = ",";
	
	public abstract AuthProvider convert(final SAMLUploadToken token) throws Exception;

	protected List<String> getValue(final AuthProviderAttribute attribute) {
		final List<String> retVal = new LinkedList<String>();
		if(attribute != null && StringUtils.isNotBlank(attribute.getValue())) {
			/* assume the Admin already trimmed off bad strings, in case of list value */
			final String attributeValue = StringUtils.trimToNull(attribute.getValue());
			if(attribute.getDataType() == AuthAttributeDataType.singleValue || attribute.getDataType() == AuthAttributeDataType.booleanValue) {
				retVal.add(attributeValue);
			} else {
				final String[] delimitedValue = attributeValue.split(VALUE_DELIMITER);
				for(final String value : delimitedValue) {
					retVal.add(value);
				}
			}
		}
		return retVal;
	}
}
