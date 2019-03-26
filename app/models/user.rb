class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :username, presence: true
  # validates :username, uniqueness: true
  mount_uploader :avatar, AvatarUploader
  
  has_many :recipes
  has_many :dishes

  # def to_param
  #   username
  # end
end
