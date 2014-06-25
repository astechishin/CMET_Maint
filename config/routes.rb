CMETMaint::Application.routes.draw do
  resources :code_values, only: [:index, :show], defaults: {format: :json}

  resources :ballots, except: [:destroy]

  resources :work_groups, only: [:index, :show]

  resources :cmet_versions, only: [:show, :edit, :update]

  resources :cmets, except: [:destroy] do
    resources :cmet_versions, only: [:new, :create]
  end

  root 'cmets#index'
end
