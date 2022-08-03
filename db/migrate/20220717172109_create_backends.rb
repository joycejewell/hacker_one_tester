class CreateBackends < ActiveRecord::Migration[7.0]
  def change
    create_table :backends do |t|
      t.string :name
      t.string :endpoint

      t.timestamps
    end
  end
end
