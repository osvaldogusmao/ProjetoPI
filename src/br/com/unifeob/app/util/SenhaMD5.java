package br.com.unifeob.app.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SenhaMD5 {

	public String  transformarParaMd5(String frase) {

		MessageDigest m;
		String retorno = null ;

		try {
		m = MessageDigest.getInstance("MD5");
		m.update(frase.getBytes(),0,frase.length());
		retorno = new BigInteger(1,m.digest()).toString(16);

		} catch (NoSuchAlgorithmException e) {

		e.printStackTrace();

		}
		return retorno;

		}
}
