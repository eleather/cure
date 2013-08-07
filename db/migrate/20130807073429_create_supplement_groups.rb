class CreateSupplementGroups < ActiveRecord::Migration
  def change
    create_table :supplement_groups do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
