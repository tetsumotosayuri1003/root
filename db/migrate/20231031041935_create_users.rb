class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end

class AddTelToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :tel, :address, :string
  end
end

class AddAddressToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :string
  end
end