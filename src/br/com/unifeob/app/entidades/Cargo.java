package br.com.unifeob.app.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cargo")
public class Cargo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	private Long id;
	private String nome;
	private float insalubridade;
	private float periculosidade;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public float getInsalubridade() {
		return insalubridade;
	}
	public void setInsalubridade(float insalubridade) {
		this.insalubridade = insalubridade;
	}
	public float getPericulosidade() {
		return periculosidade;
	}
	public void setPericulosidade(float periculosidade) {
		this.periculosidade = periculosidade;
	}
}
