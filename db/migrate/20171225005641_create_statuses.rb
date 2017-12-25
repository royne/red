class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.string :nombre
      t.text :contenido

      t.timestamps
    end
  end
end
