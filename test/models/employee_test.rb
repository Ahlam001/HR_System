require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :employees
  test "employee creates sucessfully" do
    emp = Employee.new( name:"ahlamm",
      email: "a@aa.com",
      job: "sw eng",
      salary: 1000,
      employment_status:"full time",
      devision_id: 1,
      team_id: 2)
    p emp  
    assert emp.save
  end

  
  test 'should not accept email' do
    emp1 = Employee.new(devision_id: 1, salary: 1000, email: "envalid email")
    p emp1
    assert_not emp1.save
  end

end
