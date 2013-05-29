package br.com.unifeob.app.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

		@Entity
		@Table(name="pessoa")
		public class Pessoa {
	
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private Long codigo;
		
		private String nome;
		private String rg;
		private String orgao_expeditor;
		private String cpf;
		//private Date
		
		
		
		
	

}
