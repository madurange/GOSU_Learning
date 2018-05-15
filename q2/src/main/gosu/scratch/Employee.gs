package scratch

class Employee extends Person {
  public var _salary: long as Salary
  
  construct(age:int, name:String, gender:Gender, salary:long){
    super(age,name,gender)
    _salary=salary
  }
  
  property get Salary():long{
    return _salary 
  }
  
}