class CreateUserBlockchains < ActiveRecord::Migration[7.0]
  def change
    create_table :user_blockchains do |t|
      t.references :user, null: false, foreign_key: true
      t.references :blockchain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
