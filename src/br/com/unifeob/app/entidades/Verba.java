package br.com.unifeob.app.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import br.com.unifeob.app.enumator.TipoValorEnum;
import br.com.unifeob.app.enumator.TipoVerbaEnum;

@Entity
public class Verba {

	private Integer id;
	private String descricao;
	private TipoVerbaEnum tipoVerba;
	private TipoValorEnum tipoValor;
	private Boolean incideINSS;
	private Boolean incideIRRF;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public TipoVerbaEnum getTipoVerba() {
		return tipoVerba;
	}

	public void setTipoVerba(TipoVerbaEnum tipoVerba) {
		this.tipoVerba = tipoVerba;
	}

	public void setTipoValor(TipoValorEnum tipoValor) {
		this.tipoValor = tipoValor;
	}

	public TipoValorEnum getTipoValor() {
		return tipoValor;
	}

	public Boolean getIncideINSS() {
		return incideINSS;
	}

	public void setIncideINSS(Boolean incideINSS) {
		this.incideINSS = incideINSS;
	}

	public Boolean getIncideIRRF() {
		return incideIRRF;
	}

	public void setIncideIRRF(Boolean incideIRRF) {
		this.incideIRRF = incideIRRF;
	}

}
