class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]


  def test

  end

  def admin
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
  
end
