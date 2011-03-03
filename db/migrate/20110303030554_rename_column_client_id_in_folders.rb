class RenameColumnClientIdInFolders < ActiveRecord::Migration
  def self.up
    rename_column :folders, :client_id_id, :client_id
  end

  def self.down
  end
end
