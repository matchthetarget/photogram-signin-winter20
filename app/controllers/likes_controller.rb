class LikesController < ApplicationController
  def create
    user_id = @current_user.id
    photo_id = params.fetch("query_photo_id")
    the_like = Like.new
    the_like.fan_id = user_id
    the_like.photo_id = photo_id
    the_like.save

    redirect_to("/photos/#{the_like.photo_id}")

  end

  def destroy
    path_id = params.fetch("the_like_id")

    matching_like_records = Like.where({ :id => path_id })
    
    the_like = matching_like_records.at(0)
    
    the_like.destroy

    redirect_to("/photos/#{the_like.photo_id}")
  end
end
