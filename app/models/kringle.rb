class Kringle < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  belongs_to :kringlehead, polymorphic: true
  has_many :participants
  has_many :users, through: :participants

  def add_participants(participants)

  end

end
