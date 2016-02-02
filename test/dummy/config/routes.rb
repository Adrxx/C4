Rails.application.routes.draw do
  

  get 'admin/contacto' => 'c4/admin#contact', as: 'contact'
  patch 'admin/contacto' => 'c4/admin#contact'
  
  mount C4::Engine => "/admin"

  get '/test' => 'application#tests'

end
