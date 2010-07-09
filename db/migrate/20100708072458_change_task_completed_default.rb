class ChangeTaskCompletedDefault < ActiveRecord::Migration
  def self.up
    change_table :tasks do |t|
      t.change_default :completed, false
    end
  end

  def self.down
    #do nothing. irrelevant.
  end
end
