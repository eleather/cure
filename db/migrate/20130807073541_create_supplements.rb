class CreateSupplements < ActiveRecord::Migration
  def change
    create_table :supplements do |t|
      t.string :name
      t.int :supplement_group_id
      t.text :description
      t.string :dose

      t.timestamps
    end
  end
end
