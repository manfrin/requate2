class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :cent_amount
      t.references :user, index: true
      t.references :group, index: true

      t.timestamps
    end
  end
end
