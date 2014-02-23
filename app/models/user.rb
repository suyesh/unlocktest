class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :alcatels
         has_many :blackberries
         has_many :htcs
         has_many :lgs
         has_many :samsungs
         has_many :iphones
         has_many :huwaeis
end
