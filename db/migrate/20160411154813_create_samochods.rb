class CreateSamochods < ActiveRecord::Migration
  def change
    create_table :samochods do |t|
      t.string :marka
      t.string :model

      t.timestamps null: false
    end
  end
end
