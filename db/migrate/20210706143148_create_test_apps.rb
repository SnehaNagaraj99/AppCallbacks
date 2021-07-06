class CreateTestApps < ActiveRecord::Migration
  def change
    create_table :test_apps do |t|
      t.string :name
      t.text :email

      t.timestamps null: false
    end
  end
end
