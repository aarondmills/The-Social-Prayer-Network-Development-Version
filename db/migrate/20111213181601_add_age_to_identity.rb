class AddAgeToIdentity < ActiveRecord::Migration
  def self.up
    add_column :identities, :city, :string
    add_column :identities, :state, :string
    add_column :identities, :country, :string
    add_column :identities, :age, :integer
  end

  def self.down
    remove_column :identities, :age
    remove_column :identities, :country
    remove_column :identities, :state
    remove_column :identities, :city
  end
end
