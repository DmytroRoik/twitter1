class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :posts, :dependent => :delete_all
has_many :comments,:dependent => :delete_all

  validates :username, presence: true
  
  
end
