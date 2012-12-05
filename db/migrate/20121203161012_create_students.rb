class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :ra
      t.string :nome
      t.integer :telefone
      t.string :turno
      t.string :titulo_tcc
      t.string :orientador_tcc
      t.string :fase_tcc
      t.integer :data_entrada_sem
      t.integer :data_entrada_ano
      t.integer :data_conclusao_sem
      t.integer :data_conclusao_ano
      t.references :user

      t.timestamps
    end
      add_index :students, :user_id
  end
end
