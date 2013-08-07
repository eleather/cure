class CreateSupplementPlans < ActiveRecord::Migration
  def change
    create_table :supplement_plans do |t|
      t.int :user_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
