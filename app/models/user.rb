class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  include DeviseTokenAuth::Concerns::User

  validates :email, uniqueness: { case_sensitive: false }

  has_many :assets
end
