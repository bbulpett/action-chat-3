Rails.application.routes.draw do
  get 'comments/create'

  get 'sessions/new'

  get 'messages/index'

  get 'messages/show'

  get 'examples/index'

	resource :session
	resources :examples

	resources :messages do
		resources :comments
	end

	root 'examples#index'
end
