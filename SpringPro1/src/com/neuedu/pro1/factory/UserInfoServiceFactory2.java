package com.neuedu.pro1.factory;

import com.neuedu.pro1.service.UserInfoService;
import com.neuedu.pro1.service.impl.UserInfoServiceBean;

/**
 * ��̬�๤��
 * @author Sun
 *
 */
public class UserInfoServiceFactory2 {
	public UserInfoService createUserInfoService() {
		return new UserInfoServiceBean();
	}
}
