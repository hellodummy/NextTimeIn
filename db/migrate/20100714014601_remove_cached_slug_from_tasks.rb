class RemoveCachedSlugFromTasks < ActiveRecord::Migration
  def self.up
    remove_column :tasks, :cached_slug
  end

  def self.down
    add_column :tasks, :cached_slug, :string
  end
end
