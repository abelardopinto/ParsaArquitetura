class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :user, :null =>false, :limit => 50
      t.string :password, :null => false, :limit => 50
      t.string :name
      t.string :contact
      t.string :tel
      t.string :cel
      t.text :address
      t.text :info

      t.timestamps
    end

    add_index :clients, :user, :unique => true
  end

  def self.down
    drop_table :clients
  end
end
