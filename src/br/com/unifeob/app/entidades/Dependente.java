package br.com.unifeob.app.entidades;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

		@Entity
		@Table(name="dependente")
		public class Dependente {

			@Id
			@GeneratedValue(strategy=GenerationType.AUTO)
			private Long codigo;
			private String nome;
			@Temporal(TemporalType.DATE)
			private Date dataNascimento;
			private String rg;
			private String orgaoExpeditor;
			private String cpf;
			@ManyToOne
			private Pessoa pessoa;
			

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

			public Date getDataNascimento() {
				return dataNascimento;
			}

			public void setDataNascimento(Date dataNascimento) {
				this.dataNascimento = dataNascimento;
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

			public Pessoa getPessoa() {
				return pessoa;
			}

			public void setPessoa(Pessoa pessoa) {
				this.pessoa = pessoa;
			}


			
}
