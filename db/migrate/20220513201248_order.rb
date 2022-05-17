class Order < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :thingid
      t.references :user, null: false, foreign_key: {to_table: :users}
    end
  end
end
