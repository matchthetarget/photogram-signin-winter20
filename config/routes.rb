Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index" })

  # User routes

  # CREATE
  post("/insert_user", {:controller => "users", :action => "create" })

  # READ
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:the_username", {:controller => "users", :action => "show"})

  get("/user_sign_up", { :controller => "users", :action => "sign_up" })
  
  get("/user_sign_out", { :controller => "users", :action => "sign_out" })

  get("/user_sign_in", { :controller => "users", :action => "sign_in" })

  post("/verify_credentials", { :controller => "users", :action => "authenticate" })

  # UPDATE
  post("/update_user/:the_user_id", {:controller => "users", :action => "update" })

  # DELETE
  get("/delete_user/:the_user_id", {:controller => "users", :action => "destroy"})

  # Photo routes

  # CREATE
  post("/insert_photo", { :controller => "photos", :action => "create" })

  # READ
  get("/photos", { :controller => "photos", :action => "index"})

  get("/photos/:the_photo_id", { :controller => "photos", :action => "show"})

  # UPDATE
  post("/update_photo/:the_photo_id", { :controller => "photos", :action => "update" })

  # DELETE
  get("/delete_photo/:the_photo_id", { :controller => "photos", :action => "destroy"})

  # Comment routes

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })

  # DELETE

  get("/delete_comment/:the_comment_id", { :controller => "comments", :action => "destroy"})

  # Like routes

  # CREATE
  post("/insert_like", { :controller => "likes", :action => "create" })

  # DELETE

  get("/delete_like/:the_like_id", { :controller => "likes", :action => "destroy"})
end
