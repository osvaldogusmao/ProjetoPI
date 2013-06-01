
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
<<<<<<< HEAD
=======

public Integer getIdFuncEmpresa() {
	return idFuncEmpresa;
}
public void setId(Integer idFuncEmpresa) {
	this.idFuncEmpresa = idFuncEmpresa;
} 

>>>>>>> 1f23987453d2a7d7a87ce26b1ab53ffee99e6211
public Integer getIdFuncionario() {
	
	return idFuncionario;
}
public void setIdFuncionario(Integer idFuncionario) {
	this.idFuncionario = idFuncionario;
}
public Integer getIdEmpresa() {
	return idEmpresa;
}
public void setIdEmpresa(Integer idEmpresa) {
	this.idEmpresa = idEmpresa;
}
public Integer getIdCargo() {
	return idCargo;
}
public void setIdCargo(Integer idCargo) {
	this.idCargo = idCargo;
}


}
