class ApplicationController < ActionController::Base
  before_action(:load_current_user)
  
  def load_current_user
    the_id = session.fetch(:user_id)
    matching_user_records = User.where({ :id => the_id })
    @current_user = matching_user_records.at(0)
  end
end
