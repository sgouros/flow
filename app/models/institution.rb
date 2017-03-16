class Institution < ActiveRecord::Base
  validates :name, 			:presence => true
  has_many :documents

  default_scope order('institutions.name')
end
