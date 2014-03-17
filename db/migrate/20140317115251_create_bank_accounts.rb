class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.integer :airline_id
      t.decimal :balance, precision: 17, scale: 2
      t.string :credit_rating

      t.timestamps
    end
  end
end
