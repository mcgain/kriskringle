class Kringle < ActiveRecord::Base
  belongs_to :kringlehead, class_name: "User"
end
