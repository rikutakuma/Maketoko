class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :relations, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :handle_name, presence: true
  validates :gender, presence: true
  validates :age, presence: true

end
