class User < ApplicationRecord
  has_many :portfolios
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
