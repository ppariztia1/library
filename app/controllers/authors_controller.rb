class AuthorsController < ApplicationController
  before_action :set_author, only: [:show] # No queremos que se ejecute en el index

  def index
    # Primero debo ir a la base de datos para extraer los autores
    # Y el arroba indica que es una variable global, es decir, que funciona para toda la class
    @authors = Author.all
  end

  def show 
  end
  
 # GET /authors/new
  def new
    @author = Author.new()
  end

 # Este callback sería en el caso de que tenga el edit, update y destroy, para no tener que repetir la linea de codigo.
  def set_author
    @author = Author.find(params[:id])
  end



end