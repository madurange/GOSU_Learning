package scratch

uses java.util.*

class Corporation {
  public var _name:String as Name
  public var _departments: java.util.Set<Department> as Departments
  
  construct(name:String, departments:Set<Department>){
    _name=name
    _departments=departments    
  }
  
  property get Name():String {
    return _name
  }

  property get Departments():Set<Department> {
   return _departments
  }

}
