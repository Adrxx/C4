Rails.application.routes.draw do
  

  resources :announcements, path: 'admin/announcements', except: :show, path_names: { new: 'nuevo', edit: 'editar' }, module: 'c4'
  mount C4::Engine => "/admin"

end
