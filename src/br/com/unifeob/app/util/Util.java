package br.com.unifeob.app.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Util {

	public String  converterSenhaParaMd5(String frase) {

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
	
	public static Date  converterStringParaData(String data){		
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date = null;
		try {
			date = dateFormat.parse(data);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	public static Calendar  converterStringParaCalendar(String data){		
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Calendar date = Calendar.getInstance();
		try {
			date.setTime(dateFormat.parse(data));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	/*
	public static String  converterDateParaString(Date date){		
		String data;
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		
		
		
		return data;
	}
	*/
}
