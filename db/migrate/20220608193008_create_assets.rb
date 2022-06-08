class CreateAssets < ActiveRecord::Migration[6.1]
  def change
    create_table :assets do |t|
      t.string :name, null: false
      t.references :user, index: true

      t.timestamps
    end
  end
end
