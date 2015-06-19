require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class CreateTasks < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |t|
      t.string :name
      t.integer :completed
      t.timestamps
    end
  end
end
