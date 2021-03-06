class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
  end

  def new
    @person = Person.new
  end

  def edit
  end

  def create
    @person = Person.new(person_params)
      if @person.save
        redirect_to people_path, notice: 'Persona creada'
      else
         render :new
      end
    end

  def update
      if @person.update(person_params)
         redirect_to people_path, notice: 'Persona editada'
      else
        render :edit
      end
  end

  def destroy
    @person.destroy
       redirect_to people_url, notice: 'Persona eliminada'
    end
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:nombre, :segundo_nombre, :apellido, :segundo_apellido, :direccion, :correo, :f_nacimiento)
    end
