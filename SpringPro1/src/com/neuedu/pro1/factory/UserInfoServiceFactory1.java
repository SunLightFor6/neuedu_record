package com.neuedu.pro1.factory;

import com.neuedu.pro1.service.UserInfoService;
import com.neuedu.pro1.service.impl.UserInfoServiceBean;

/**
 * æ≤Ã¨¿‡π§≥ß
 * @author Sun
 *
 */
public class UserInfoServiceFactory1 {
	public static UserInfoService createUserInfoService() {
		return new UserInfoServiceBean();
	}
}
