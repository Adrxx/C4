C4::Engine.routes.draw do
  devise_for :users, class_name: "C4::User", module: :devise
end
