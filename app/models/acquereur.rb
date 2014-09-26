class Acquereur < ActiveRecord::Base
  belongs_to :user
  belongs_to :agence
end
