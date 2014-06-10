class User < ActiveRecord::Base
  validates :login, presence: true
  validates :email, presence: true
  validates :provider, presence: true
  validates :uid, presence: true
end
