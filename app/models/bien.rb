class Bien < ActiveRecord::Base
  belongs_to :agence
  belongs_to :user
  belongs_to :proprietaire
end
