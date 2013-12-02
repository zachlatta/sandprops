class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.belongs_to :owner
      t.string :address

      t.timestamps
    end
  end
end
