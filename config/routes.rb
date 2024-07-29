# frozen_string_literal: true

Rails.application.routes.draw do
  root 'flights#index'
  resources :flights
  resources :bookings, only: %i[new create show]
end
