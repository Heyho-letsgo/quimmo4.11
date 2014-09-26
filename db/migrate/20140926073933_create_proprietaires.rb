class CreateProprietaires < ActiveRecord::Migration
  def change
    create_table :proprietaires do |t|
      t.references :agence, index: true
      t.references :user, index: true
      t.string :nom

      t.timestamps
    end
  end
end
