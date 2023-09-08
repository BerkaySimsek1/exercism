class GradeSchool {
    private var studentDict: [String: Int]
  init() {
    studentDict = [:]
  }
    var nameArr: [String] = []
  func addStudent(_ name: String, grade: Int) -> Bool{
      if nameArr.contains(name){
          return false
      }else{
          nameArr.append(name)
          studentDict[name] = grade
      }
      return true
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        var studentArray: [String] = []
         for i in studentDict {
            if(grade == i.value) {
                studentArray.append(i.key)
            }
         }
        return studentArray.sorted()
    }

    func roster() -> [String] {
        let grades = Set(studentDict.values)
        return grades.sorted().flatMap {studentsInGrade($0)}
    }
}

