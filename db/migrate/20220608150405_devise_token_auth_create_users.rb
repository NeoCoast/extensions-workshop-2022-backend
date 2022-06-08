class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[6.1]
  def change
    
    create_table :users do |t|
      ## Required
      t.string :provider, :null => false, :default => 'email'
      t.string :uid, :null => false, :default => ''

      ## Database authenticatable
      t.string :email, null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

      ## Tokens
      t.json :tokens

      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, [:uid, :provider],     unique: true
  end
end
