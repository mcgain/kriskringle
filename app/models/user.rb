class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  has_many :participants
  has_many :kringles, through: :participants
  has_many :managed_kringles, class_name: "Kringle", as: :kringlehead

  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

end
