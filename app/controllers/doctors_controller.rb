# encoding: utf-8

class DoctorsController < ApplicationController
  def new
    @user = Doctor.new
  end

  def create
    @user = Doctor.new(params[:doctor])
    @user.email = params[:doctor][:email].strip
    @user.password = params[:doctor][:password].strip
    @user.password_confirmation = params[:doctor][:password_confirmation].strip
    @user.fullname = params[:doctor][:fullname].strip
    @user.address = params[:doctor][:address].strip
    @user.phone = params[:doctor][:phone].strip
    @user.specialty = params[:doctor][:specialty].strip

    @user.valid?

    if @user.errors.empty?
      
      # @user.save

      flash[:success] = 'Ο λογαριασμός σας δημιουργήθηκε!'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
  end
end
