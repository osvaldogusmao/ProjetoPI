package br.com.unifeob.app.entidades;

public class Estado {
	
	private Integer id;
	private String uf;
	private String nome;
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setUf(String uf) {
		this.uf = uf;
	}
	
	public String getUf() {
		return uf;
	}
}
