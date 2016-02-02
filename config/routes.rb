C4::Engine.routes.draw do

    

    devise_for :users, class_name: "C4::User", :path => "auth", :module => :devise, path_names: { :sign_in => 'login', :sign_out => 'logout' }

    root "admin#index"

    #MAIL
    post '/send-contact-mail' => 'admin#send_contact_mail', as: 'send_contact_mail'


    resources :users, path: 'usuarios', except: :show, path_names: { new: 'nuevo', edit: 'editar' }


end
