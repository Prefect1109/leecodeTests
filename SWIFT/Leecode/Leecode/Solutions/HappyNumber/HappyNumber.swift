import Foundation

class HappyNumberTask {
    
    private init() {}
    
    static var shared = HappyNumberTask()
    
    func run() -> String {
        return String(isHappy(input))
    }
    
    //MARK: - Solution
    
    var input = 8
    
//    func isHappy(_ n: Int) -> Bool {
//
//        if let isInputResult = checkHappiness(n) { return isInputResult}
//
//        var result = 0
//        var stringNumber = String(n)
//
//        while stringNumber.count != 1 {
//
//            result = 0
//
//            for charter in stringNumber {
//                let intValue = Int("\(charter)")!
//                result += intValue * intValue
//            }
//
//            print(result)
//
//            stringNumber = String(result)
//        }
//
//        return checkHappiness(result)!
//    }
//
//    func checkHappiness(_ n: Int) -> Bool? {
//        if n == 1 || n == 7 {
//            return true
//        } else if n == 2 || n == 9 || n == 5 || n == 3 || n == 4 || n == 6 || n == 8 {
//            return false
//        } else {
//            return nil
//        }
//    }
    
    //MARK: - Sick solution
    
    func sumSquaredDigits(_ n: Int) -> Int {
      var number = n
      var sum = 0
      var digit: Int

      while number != 0 {
         digit = number % 10
         sum += digit * digit
         number /= 10
      }
        print(sum)
      return sum
   }

   func isHappy(_ n: Int) -> Bool {
     var slow = n
     var fast = n

     repeat {
        print("slow")
        slow = sumSquaredDigits(slow)
        print("fast")
        fast = sumSquaredDigits(sumSquaredDigits(fast))

        if fast == 1 { return true }

     } while slow != fast

     return false
   }
    
}
