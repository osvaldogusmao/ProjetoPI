package br.com.unifeob.app.enumator;

public enum TipoValorEnum {
	PERCENTUAL(1, "Percentual"), REAL(2, "Reais");

	private int id;
	private String descricao;
	
	private TipoValorEnum(int id, String descricao){
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
