class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :fullname
      t.string :type
      t.string :phone
      t.string :address
      t.string :specialty

      t.timestamps
    end
  end
end
