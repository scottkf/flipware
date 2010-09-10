class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def show
    @person = Person.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
  
end
