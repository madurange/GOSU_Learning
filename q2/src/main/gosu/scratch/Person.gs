package scratch

abstract class Person {
  public enum Gender {MALE, FEMALE}
  
  public var _age: int as Age
  public var _name: String as Name
  public var _gender: Gender as Gender
  
  construct(age:int,name:String, gender:Gender){
    _age=age
    _name=name
    _gender=gender
  }

  property get Age():int{
    return _age  
  }
  property get Name():String{
    return _name  
  }
  
  property get Gender():Gender{
    return _gender
  }

}