class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, default: 'New user'
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
