class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.datetime :date
      t.integer :social_name
      t.text :posts
      t.integer :status, :default => 0
      t.binary :photo

      t.timestamps
    end
    add_reference :tasks, :user, index: true
  end
end
