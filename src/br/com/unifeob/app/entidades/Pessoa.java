package br.com.unifeob.app.entidades;



import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

		@Entity
		@Table(name="pessoa")
		public class Pessoa {
	
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private Long codigo;
		
		private String nome;
		private String rg;
		private String orgaoExpeditor;
		private String cpf;
		@Temporal(TemporalType.DATE)
		private Date dataNascimento;
		private String estadoCivil;
		private String deficienteFisico;
		private String cnh;
		private String nomeMae;	
		private String logradouro;
		private Integer numero;
		private String bairro;
		private String uf;
		private String cidade;
		private String cep;
	
		@OneToMany(cascade = CascadeType.ALL , targetEntity= Dependente.class ,mappedBy="pessoa")
		private List<Dependente> dependentes ;
		
		
		public Long getCodigo() {
			return codigo;
		}
		public void setCodigo(Long codigo) {
			this.codigo = codigo;
		}
		public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		public String getRg() {
			return rg;
		}
		public void setRg(String rg) {
			this.rg = rg;
		}
		public String getOrgaoExpeditor() {
			return orgaoExpeditor;
		}
		public void setOrgaoExpeditor(String orgaoExpeditor) {
			this.orgaoExpeditor = orgaoExpeditor;
		}
		public String getCpf() {
			return cpf;
		}
		public void setCpf(String cpf) {
			this.cpf = cpf;
		}
		public Date getDataNascimento() {
			return dataNascimento;
		}
		public void setDataNascimento(Date dataNascimento) {
			this.dataNascimento = dataNascimento;
		}
		public String getEstadoCivil() {
			return estadoCivil;
		}
		public void setEstadoCivil(String estadoCivil) {
			this.estadoCivil = estadoCivil;
		}
		public String getDeficienteFisico() {
			return deficienteFisico;
		}
		public void setDeficienteFisico(String deficienteFisico) {
			this.deficienteFisico = deficienteFisico;
		}
		public String getCnh() {
			return cnh;
		}
		public void setCnh(String cnh) {
			this.cnh = cnh;
		}
		public String getNomeMae() {
			return nomeMae;
		}
		public void setNomeMae(String nomeMae) {
			this.nomeMae = nomeMae;
		}
		public String getLogradouro() {
			return logradouro;
		}
		public void setLogradouro(String logradouro) {
			this.logradouro = logradouro;
		}
		public Integer getNumero() {
			return numero;
		}
		public void setNumero(Integer numero) {
			this.numero = numero;
		}
		public String getBairro() {
			return bairro;
		}
		public void setBairro(String bairro) {
			this.bairro = bairro;
		}
		public String getUf() {
			return uf;
		}
		public void setUf(String uf) {
			this.uf = uf;
		}
		public String getCidade() {
			return cidade;
		}
		public void setCidade(String cidade) {
			this.cidade = cidade;
		}
		public String getCep() {
			return cep;
		}
		public void setCep(String cep) {
			this.cep = cep;
		}
		public List<Dependente> getDependentes() {
			return dependentes;
		}
		public void setDependentes(List<Dependente> dependentes) {
			this.dependentes = dependentes;
		}

		
		
		
		
	

}
