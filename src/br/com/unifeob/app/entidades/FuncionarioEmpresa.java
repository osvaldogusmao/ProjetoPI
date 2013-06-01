
package br.com.unifeob.app.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FuncionarioEmpresa {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
private Integer idFuncEmpresa;	
private Integer idFuncionario;
private Integer idEmpresa;
private Integer idCargo;

public Integer getIdFuncEmpresa() {
	return idFuncEmpresa;
}
public void setId(Integer idFuncEmpresa) {
	this.idFuncEmpresa = idFuncEmpresa;
} 

public Integer getIdFuncionario() {
	return idFuncionario;
}
public void setId(Integer idFuncionario) {
	this.idFuncionario = idFuncionario;
} 

public String getIdEmpresa() {
	return idEmpresa;
}
public void setIdEmpresa(String idEmpresa) {
	this.idEmpresa = idEmpresa;
}

public String getIdCargo() {
	return idCargo;
}
public void setIdCargo(String idCargo) {
	this.idCargo = idCargo;
}


}
