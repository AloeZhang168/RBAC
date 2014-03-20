package com.rbac.service;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rbac.dao.LoginDao;
import com.rbac.entity.SysAccount;
import com.rbac.util.PasswordHash;

@Service("loginService")
public class LoginService {

	@Autowired
	private LoginDao loginDao;

	public SysAccount login(String username, String password) {
		//��������û���û�ҵ��û���ҲҪȥ������֤���뷽������ֹ���˸��ݷ���ʱ��²��û���
		SysAccount account = loginDao.getSysAccountByUsername(username);
		String userhash = "11";
		String usersalt = "11";
		if (account != null && StringUtils.isNotBlank(account.getPassword())
				&& StringUtils.isNotBlank(account.getSalt())) {
			userhash = account.getPassword();
			usersalt = account.getSalt();
		}
		StringBuilder s = new StringBuilder();
		s.append(PasswordHash.PBKDF2_ITERATIONS).append(":").append(usersalt)
				.append(":").append(userhash);
		try {
			if (PasswordHash.validatePassword(password, s.toString())) {
				return account;
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (InvalidKeySpecException e) {
			e.printStackTrace();
		}

		return null;
	}
}
