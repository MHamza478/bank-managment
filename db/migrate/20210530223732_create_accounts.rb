class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :amount
      t.string :password
      t.string :userID


      t.timestamps
    end
  end
end
