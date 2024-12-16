class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    unless table_exists?(:users)
      create_table :users do |t|
        t.string :name
        t.integer :age
        t.string :email

        t.timestamps
      end
    end
  end
end