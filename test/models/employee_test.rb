require "test_helper"

class EmployeeTest < ActiveSupport::TestCase

  fixtures :employees

  test 'employee creates sucessfully' do
    emp = Employee.new(name:"ahlamm", email: "a@aa.com", job: "sw eng",
      salary: 1000,
      employment_status:"full time",
      devision_id: 1,
      team_id: 2)  
      # p emp
    assert emp.save
  end
 
  test 'should not accept email' do
    emp1 = Employee.new(name: "employee1", devision_id: 1, salary: 1000, email: "envalid email")
    # p emp1
    assert_not emp1.save
  end

  test 'should  not accept envalid salary' do
    emp1 = Employee.new(name: "employee2", devision_id: 1, email: "a@aaa.com", salary: "string")
    assert_not emp1.save
  end

  test 'should  not accept empty name' do
    emp1 = Employee.new(devision_id: 1, email: "a@aaaa.com")
    assert_not emp1.save
  end
  # test 'should  accept employee' do
  #   dev = Devision.new(id: 1, name:"B")
  
  
  #   team = Team.new
  #   emp1 = Employee.new(name: "emp3", devision_id: d, email: "a@aa.com", salary: 100)
  #   assert emp1.save
  # end
  test 'should  not accept ununiqe name' do
    emp1 = Employee.new(devision_id: 1, email: "a@a.com")
    assert_not emp1.save
  end

  test 'check fixture' do 
    emp = Employee.new
    emp.name = employees(:one).name
    emp.save

   assert_equal(emp.name , 'ahlam')
  end

end
