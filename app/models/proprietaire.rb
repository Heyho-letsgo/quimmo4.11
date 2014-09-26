class Proprietaire < ActiveRecord::Base
  belongs_to :agence
  belongs_to :user
end
