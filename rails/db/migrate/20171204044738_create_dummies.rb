class CreateDummies < ActiveRecord::Migration[5.1]
  def change
    create_table :dummies do |t|
      t.json :data

      t.timestamps
    end
  end
end
