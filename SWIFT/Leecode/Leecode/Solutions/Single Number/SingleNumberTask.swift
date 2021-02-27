import Foundation

class SingleNumberTask {
    
    private init() {}
    
    static func shared() -> SingleNumberTask {
        return SingleNumberTask()
    }
    
    func run() -> String {
        return String(singleNumber(input))
    }
    
    //MARK: - Solution
    
    var input = [2, 2, 3, 4, 4]
    
    func singleNumber(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        for num in nums {
            if set.contains(num) {
                set.remove(num)
            } else {
                set.insert(num)
            }
        }
        return set.first!
    }
    
}
