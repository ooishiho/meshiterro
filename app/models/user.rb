class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatableclass
end
 
 has_many :post_images, dependent: :destroy
 has_many :post_comments, dependent: :destroy
 has_one_attached :profile_image
 has_many :favorites, dependent: :destroy
end