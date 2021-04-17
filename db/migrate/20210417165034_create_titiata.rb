class CreateTitiata < ActiveRecord::Migration[6.1]
  def change
    create_table :titiata do |t|
      t.text :titiatum

      t.timestamps
    end
  end
end
