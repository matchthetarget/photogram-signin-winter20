class UsersController < ApplicationController
  def index
    @list_of_all_users = User.all.order({ :username => :asc })

    render({ :template => "user_templates/index.html" })
  end

  def show
    the_username = params.fetch("the_username")
    matching_users = User.where({ :username => the_username })
    @the_user = matching_users.at(0)

    render({ :template => "user_templates/show.html.erb" })
  end

  def authenticate
    username = params.fetch("query_username")
    password = params.fetch("query_password")

    # look up the record from the db matching username
    matching_user_records = User.where({ :username => username })
    the_user = matching_user_records.at(0)

    # if there's no record, redirect back to sign in form
    if the_user == nil
      redirect_to("/user_sign_in", { :alert => "No one by that name 'round these parts" })
    else
      # if there is a record, check to see if password matches
      if the_user.authenticate(password)
        session.store(:user_id, the_user.id)

        redirect_to("/", { :notice => "Welcome back, " + the_user.username + "!" })
      else
        # if not, redirect back to sign in form
        redirect_to("/user_sign_in", { :alert => "Nice try, sucker!" })
      end
    end
  end

  def sign_out
    reset_session

    redirect_to("/", { :notice => "See ya later!" })
  end

  def sign_up

    render({ :template => "user_templates/sign_up.html.erb" })
  end

  def sign_in

    render({ :template => "user_templates/sign_in.html.erb" })
  end

  def create
    the_user = User.new

    the_user.username = params.fetch("query_username")
    the_user.password = params.fetch("query_password")

    the_user.save
    
    session.store(:user_id, the_user.id)

    redirect_to("/users/#{the_user.username}")
  end

  def update
    the_id = params.fetch("the_user_id")
    matching_users = User.where({ :id => the_id })
    the_user = matching_users.at(0)

    the_user.username = params.fetch("query_username")

    the_user.save
    
    redirect_to("/users/#{the_user.username}")
  end

  def destroy
    username = params.fetch("the_username")
    matching_users = User.where({ :username => username })
    the_user = matching_users.at(0)

    the_user.destroy

    redirect_to("/users")
  end

end
