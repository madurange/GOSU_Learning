package scratch

uses java.util.*

class Department {
  public enum Kind {CLAIMCENTER, BILLINGCENTER, DEVOPS, ARCHITECTURE}
  public var _kind: Department.Kind as Kind
  public var _name: String as Name
  public var _manager: Manager as Manager
  public var _employees: java.util.Set<Employee> as Employees
  
  
  construct(kind:Department.Kind, name:String, manager:Manager, employees:Set<Employee>){
    _kind=kind
    _name=name
    _manager=manager
    _employees=employees
  }
  
  property get Kind(): Department.Kind{
    return _kind 
  }

  property get Name(): String{
    return _name
  }
  
  property get Manager(): Manager{
    return _manager 
  }

  property get Employees(): Set<Employee>{
    return _employees
  }
  
  
  /*function overAge35():boolean{
      for(e in this._employees){
         if(e.Age>35) return true 
      }
      return false
  }*/
  
 
}