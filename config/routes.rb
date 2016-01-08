C4::Engine.routes.draw do

    

    devise_for :users, class_name: "C4::User", :path => "auth", :module => :devise, path_names: { :sign_in => 'login', :sign_out => 'logout' }

    root "admin#index"


    resources :users, path: 'usuarios', except: :show, path_names: { new: 'nuevo', edit: 'editar' }


end
