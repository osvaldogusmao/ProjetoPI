package br.com.unifeob.app.enumator;

public enum TipoVerbaEnum {
	PROVENTOS(1, "Provetos"), DESCONTOS(2, "Descontos");

	private int id;
	private String descricao;
	
	private TipoVerbaEnum(int id, String descricao){
		this.id = id;
		this.descricao = descricao;
	}
	
	public int getId() {
		return id;
	}
	
	public String getDescricao() {
		return descricao;
	}
}
