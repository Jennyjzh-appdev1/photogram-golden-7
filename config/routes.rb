Rails.application.routes.draw do
  
  get("/photos" ,  {:controller => "pictures" , :action => "index"})
  
  get("/photos/new" ,  {:controller => "pictures" , :action => "display_blank_form"})
  
  get("/create_photo" , {:controller => "pictures", :action => "add_photo_to_list"})
  
  get("/photos/4" , {:controller => "pictures" , :action => "details_one_row"})
  
  get("/photos/4/edit" , {:controller => "pictures" , :action => "edit_photo"})
  
  get("/update_photo/4" , {:controller => "pictures" , :action => "update_photo_info"})
  
  get("/delete_photo/4" , {:controller => "pictures" , :action => "delete_photo"})
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
