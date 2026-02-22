class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  enum role: %i[admin regular]
  enum status: %i[invited confirmed declined]

  belongs_to :person

  has_many :events
  has_many :editions
  has_many :bookings
  has_many :polls
  has_many :poll_answers
  has_many :posts
  has_many :comments
  has_many :reactions
end
