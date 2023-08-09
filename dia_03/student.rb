=begin

Exercício 2: Cadastro de Alunos
Crie uma classe chamada Student para representar um aluno.
A classe deve ter propriedades como nome, idade e lista de disciplinas.
Crie métodos para adicionar disciplinas, calcular a média das notas e
verificar se o aluno está aprovado. Crie instâncias da classe e teste os métodos.

=end

class Student
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @subjects = {}
  end

  def add_subject(subject, grade)
    @subjects[subject] = grade
  end

  def calculate_average
    total = @subjects.values.sum
    total / @subjects.length.to_f
  end

  def passed?
    calculate_average >= 6
  end
end

# Função para obter as notas do usuário
def get_grades(subjects)
  grades = {}
  subjects.each do |subject|
    print "Digite a nota para #{subject}: "
    grade = gets.chomp.to_f
    grades[subject] = grade
  end
  grades
end

# Teste da classe Student
print "Digite o nome do aluno: "
name = gets.chomp
print "Digite a idade do aluno: "
age = gets.chomp.to_i

student = Student.new(name, age)

print "Digite o número de disciplinas: "
num_subjects = gets.chomp.to_i
subjects = []
num_subjects.times do |i|
  print "Digite o nome da disciplina #{i + 1}: "
  subjects << gets.chomp
end

grades = get_grades(subjects)

grades.each do |subject, grade|
  student.add_subject(subject, grade)
end

puts "Nome: #{student.name}"
puts "Idade: #{student.age}"
puts "Notas:"
student_subjects = student.instance_variable_get(:@subjects)
student_subjects.each do |subject, grade|
  puts "#{subject}: #{grade}"
end
puts "Média: #{student.calculate_average}"
puts "Aprovado? #{student.passed?}"

