class Kringle < ActiveRecord::Base
  belongs_to :kringlehead, class_name: "User"
  has_and_belongs_to_many :users
end
