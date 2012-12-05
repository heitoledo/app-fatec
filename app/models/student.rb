class Student < ActiveRecord::Base
  attr_accessible :data_conclusao_ano, :data_conclusao_sem, :data_entrada_ano, :data_entrada_sem, :fase_tcc, :nome, :orientador_tcc, :ra, :telefone, :titulo_tcc, :turno

  def self.to_csv
  	CSV.generate do |csv|
      csv << column_names
      all.each do |student|
        csv << student.attributes.values_at(*column_names)
  		end
  	end
  end
end
