class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :date_joined
      t.string :telephone	
      t.timestamps
    end
  end
end
