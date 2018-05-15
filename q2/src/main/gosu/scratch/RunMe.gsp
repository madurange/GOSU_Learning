
classpath "src"
package scratch

var m1:Person =new Manager(20,"CC_M-CLAIMCENTER",Person.Gender.MALE,65000)
var m2:Person =new Manager(40,"CC_M-BILLINGCENTER",Person.Gender.MALE,75000)
var m3:Person =new Manager(50,"CC_M-DEVOPS",Person.Gender.FEMALE,55000)


var e1:Person =new Employee(30,"CC_001",Person.Gender.FEMALE,45000)
var e2:Person =new Employee(25,"CC_002",Person.Gender.MALE,35000)
var e3:Person =new Employee(55,"CC_003",Person.Gender.FEMALE,40000)
var e4:Person =new Employee(43,"CC_004",Person.Gender.MALE,43000)
var e5:Person =new Employee(40,"CC_005",Person.Gender.MALE,40000)
var e6:Person =new Employee(46,"CC_006",Person.Gender.FEMALE,35000)


var d1:Department=new Department(Department.Kind.CLAIMCENTER,"ClaimCenter",m1 as Manager,{e1 as Employee,e2 as Employee})
var d2:Department=new Department(Department.Kind.BILLINGCENTER,"BillingCenter",m2 as Manager,{e3 as Employee,e4 as Employee})
var d3:Department=new Department(Department.Kind.DEVOPS,"DevOps",m3  as Manager,{e5 as Employee,e6 as Employee})

var c:Corporation=new Corporation("Travelers Canada",{d1,d2,d3})



print("All managers of all departments that have an employee older than 35")
print("===================================================================")
for(d in c._departments.where( \ d -> d.overAge35())){
  print("Dpt Name: "+d.Name+"\tManager: "+d.Manager.Name)
}