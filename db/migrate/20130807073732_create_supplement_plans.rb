class CreateSupplementPlans < ActiveRecord::Migration
  def change
    create_table :supplement_plans do |t|
      t.integer :user_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
