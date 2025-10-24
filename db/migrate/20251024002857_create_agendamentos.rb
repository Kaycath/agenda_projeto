class CreateAgendamentos < ActiveRecord::Migration[8.0]
  def change
    create_table :agendamentos do |t|
      t.string :titulo
      t.datetime :data

      t.timestamps
    end
  end
end
