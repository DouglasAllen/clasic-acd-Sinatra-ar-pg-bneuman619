class Skill < ActiveRecord::Base
  validates :name, :presence => true

  has_many :proficiencies
  has_many :users, :through => :proficiencies
end

