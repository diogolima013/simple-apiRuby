# frozen_string_literal: true

class User < ActiveRecord::Base
  # Tive que estender o devise dos models, pois não estava encontrando o método neste model 
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
