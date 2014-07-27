# encoding: utf-8

class ParentsController < ApplicationController
  def new
    @user = Parent.new
  end

  def create
    @user = Parent.new(params[:parent])
    @user.email = params[:parent][:email].strip
    @user.password = params[:parent][:password].strip
    @user.password_confirmation = params[:parent][:password_confirmation].strip
    @user.fullname = params[:parent][:fullname].strip
    @user.address = params[:parent][:address].strip
    @user.phone = params[:parent][:phone].strip

    @user.valid?

    if @user.errors.empty?
      
      @user.save

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
