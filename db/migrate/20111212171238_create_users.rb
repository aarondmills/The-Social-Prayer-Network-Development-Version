class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
