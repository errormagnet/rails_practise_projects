# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles, only: %i[show index new create]
end
