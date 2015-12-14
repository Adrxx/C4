C4::Engine.routes.draw do

    
    root 'admin#index'

    devise_for :users, class_name: "C4::User", :path => "auth", :module => 'devise', path_names: { new: 'nuevo', edit: 'editar' }

    resources :users, path: 'usuarios', except: :show, path_names: { new: 'nuevo', edit: 'editar' }


end
