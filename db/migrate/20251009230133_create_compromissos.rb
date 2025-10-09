class CreateCompromissos < ActiveRecord::Migration[8.0]
  def change
    create_table :compromissos do |t|
      t.string :titulo
      t.text :descricao
      t.date :data
      t.time :horario

      t.timestamps
    end
  end
end
