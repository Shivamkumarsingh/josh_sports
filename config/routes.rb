Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'mobile_api', defaults: { format: 'json' }  do
    namespace :v1 do
      get 'player_list', to: 'users#player_list'
      get 'dashboard', to: 'dashboard#team_members'
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
          registrations: 'mobile_api/v1/registrations'
      }
    end
  end
end