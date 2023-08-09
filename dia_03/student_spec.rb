require_relative 'student'
require 'rspec'

describe Student do
  context "Cadastro de Alunos" do
    it "calcula a média das notas" do
      student = Student.new("Maria", 18)
      student.add_subject("Matemática", 7)
      student.add_subject("História", 8)
      expect(student.calculate_average).to eq(7.5)
    end

    it "verifica se o aluno está aprovado" do
      student = Student.new("José", 21)
      student.add_subject("Inglês", 5)
      student.add_subject("Ciências", 6)
      expect(student.passed?).to be_falsey
    end

  end

end