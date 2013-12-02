class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.belongs_to :property
      t.string :number
      t.decimal :rent, precision: 8, scale: 2

      t.timestamps
    end
  end
end
