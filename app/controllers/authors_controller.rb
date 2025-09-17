class AuthorController < ApplicationController
  def index
    # Primero debo ir a la base de datos para extraer los autores
    # Y el arroba indica que es una variable global, es decir, que funciona para toda la class
    @authors = Author.all
  end

  def show 
    @author = Author.find(params[:id])
  end
end