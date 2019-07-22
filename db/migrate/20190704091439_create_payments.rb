class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_payments do |t|
      t.integer :amount
      t.integer :receiver_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
