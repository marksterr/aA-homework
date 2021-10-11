class User < ApplicationRecord
  validates :username, presence: true
  validates :session, presence: true

  
end
