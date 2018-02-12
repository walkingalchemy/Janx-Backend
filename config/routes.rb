Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :transcripts
  resources :chat_sessions

  #Web Socket stuff!
  mount ActionCable.server => '/cable'
end
