class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id]) #may need to change based on how we want to show them
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def destroy
    @people = Person.find(params[:id])
    @people.destroy
    redirect_to people_path #We need to create this path
  end

  def update
    @person = Person.find(params{:id})
    if(@person.update(people_params))
      redirect_to people_params #need to create this paramater
    else
      render :edit
    end
  end

  private

  def people_params
    params.require(:person).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
  end
end

