class Kringle < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  belongs_to :kringlehead, class_name: "User"
  has_and_belongs_to_many :users
end
