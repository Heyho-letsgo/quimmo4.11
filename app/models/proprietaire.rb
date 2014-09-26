class Proprietaire < ActiveRecord::Base
  belongs_to :agence
  belongs_to :user
  has_many :biens
end
