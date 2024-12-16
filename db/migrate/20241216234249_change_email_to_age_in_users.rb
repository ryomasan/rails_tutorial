class ChangeEmailToAgeInUsers < ActiveRecord::Migration[8.0]
  def change
    # emailカラムを削除
    remove_column :users, :email, :string
  end
end
