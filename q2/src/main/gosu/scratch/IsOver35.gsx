package scratch

enhancement IsOver35 : Department {
  function overAge35():boolean{
      for(e in this._employees){
         if(e.Age>35) return true 
      }
      return false
  }
}