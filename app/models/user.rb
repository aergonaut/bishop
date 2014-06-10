class User < ActiveRecord::Base
  validates :login, presence: true
  validates :email, presence: true
  validates :provider, presence: true
  validates :uid, presence: true

  has_many :jobs, foreign_key: "created_by_id"
end
