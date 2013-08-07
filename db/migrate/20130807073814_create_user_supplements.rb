class CreateUserSupplements < ActiveRecord::Migration
  def change
    create_table :user_supplements do |t|
      t.integer :plan_id
      t.integer :supplement_id

      t.timestamps
    end
  end
end
