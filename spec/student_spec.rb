require './lib/student'

RSpec.describe Student do

  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
    @student.log_score(89)
    @student.log_score(78)
    @student.grade
  end

  it 'exists' do
    expect(@student).to be_instance_of(Student)
    expect(@student.name).to eq("Morgan")
    expect(@student.age).to eq(21)
  end

  it "logs scores to scores array" do
    expect(@student.scores).to eq([89, 78])
  end

  it "calculates grade" do
    expect(@student.grade).to eq(83.5)
  end

end
