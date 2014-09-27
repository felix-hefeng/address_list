class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :department_id
      t.string :name
      t.integer :sex
      t.date :birthday
      t.string :phone
      t.string :mobile
      t.string :address
      t.string :position
      t.string :image

      t.timestamps
    end
  end
end
