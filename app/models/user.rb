class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :products, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
  ratyrate_rater

  validates :fname, presence: true, length: { maximum: 30 }
  validates :lname, presence: true, length: { maximum: 30 }
  validates :address, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
  devise :omniauthable, omniauth_providers: [:facebook, :google]


  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar
end
