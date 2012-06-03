class Admin::UsersController < ApplicationController
  
  def new
    @user = User.new
    @colors = Color.all
    @breeds = Breed.all
  end
  
  def create
    token = rand(36**8).to_s(36).upcase
    if params[:user][:password].blank?
      params[:user][:password] = token
      params[:user][:password_confirmation] = token
    end 
    params[:user][:code] = token
    @user = User.create(params[:user]) 
    if @user
      pet = Pet.new(params[:pet])
      pet.color = Color.find_by_name(params[:color][:name])
      pet.breed = Breed.find_by_name(params[:breed][:name])
      if pet.save
        @user.pets << pet 
        redirect_to root_path, :notice => "Entregar este codigo al usuario #{token}"
      else
        render :new
      end  
    else
      render :new
    end
  end
  
  
end