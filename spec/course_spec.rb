require './lib/course'
require './lib/student'

RSpec.describe do

  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  it 'exists' do
    expect(@course).to be_instance_of(Course)
  end

  it 'enrolls students' do
    @course.enroll(@student1)
    @course.enroll(@student2)
    expect(@course.students).to eq([@student1, @student2])
  end

  it 'indicates full' do
    expect(@course.full?).to be(false)
    @course.enroll(@student1)
    @course.enroll(@student2)
    expect(@course.full?).to be(true)
  end
end
