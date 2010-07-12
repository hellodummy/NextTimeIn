class AddFriendlyIds < ActiveRecord::Migration
  def self.up
    add_column :tasks, :cached_slug, :string
  end

  def self.down
    remove_column :tasks, :cached_slug
  end
end
