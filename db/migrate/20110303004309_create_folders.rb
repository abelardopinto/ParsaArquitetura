class CreateFolders < ActiveRecord::Migration
  def self.up
    create_table :folders do |t|
      t.belongs_to :client_id, :null => false
      t.string :name, :null => false
      t.text :description

      t.timestamps
    end
    
  end

  def self.down
    drop_table :folders
  end
end
