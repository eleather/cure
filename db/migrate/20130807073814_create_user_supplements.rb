class CreateUserSupplements < ActiveRecord::Migration
  def change
    create_table :user_supplements do |t|
      t.int :plan_id
      t.int :supplement_id

      t.timestamps
    end
  end
end
