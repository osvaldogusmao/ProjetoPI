
package br.com.unifeob.app.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MesVigente {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
private Integer idMes;
private String mes;
private Integer ano;
private Integer diasUteis;
private Integer diasNaoUteis;

public Integer getIdMes() {
	return idMes;
}
public void setId(Integer idMes) {
	this.idMes = idMes;
} 

public String getMes() {
	return Mes;
}
public void setMes(String mes) {
	this.mes = mes;
} 
public Integer getAno() {
	return ano;
}
public void setAno(Integer ano) {
	this.ano = ano;
} 

public Integer getDiasUteis() {
	return diasUteis;
}
public void setDiasUteis(Integer diasUteis) {
	this.diasUteis = diasUteis;
}

public Integer getDiasNaoUteis() {
	return diasNaoUteis;
}
public void setDiasNaoUteis(Integer diasNaoUteis) {
	this.diasNaoUteis = diasNaoUteis;
}
}
