class CreateProtocols < ActiveRecord::Migration
  def change
    create_table :protocols do |t|
      t.string :title
      t.string :description
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
