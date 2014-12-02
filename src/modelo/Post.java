package modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Post implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@Id @GeneratedValue
	private Integer codigo;
	
	private String titulo;
	
	private String imagem;
	
	@Column(length=4000)
	private String conteudo;
	
	public Post() {
		// TODO Auto-generated constructor stub
	}
	//constr defaut
	//get e set

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public String getConteudo() {
		return conteudo;
	}

	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}

	@Override
	public String toString() {
		return "Post [" + (codigo != null ? "codigo=" + codigo + ", " : "")
				+ (titulo != null ? "titulo=" + titulo + ", " : "")
				+ (imagem != null ? "imagem=" + imagem + ", " : "")
				+ (conteudo != null ? "conteudo=" + conteudo : "") + "]";
	}
	
}





