import Foundation

class SolutionManager {
        
    private init() {}
    
    static func shared() -> SolutionManager {
        return SolutionManager()
    }
    
    func run() {
//        print("Test task:\t \(task())")
//        print("SingleNumber:\t \(singleNumber())")
        print("HappyNumber:\t \(happyNumber())")
    }
    
    //MARK: - Solutions
    
    // TaskName
    func task() -> String {
        return Task.shared.run()
    }
            
    // Single number
    func singleNumber() -> String {
        return SingleNumberTask.shared.run()
    }
    
    // Happy number
    func happyNumber() -> String {
        return HappyNumberTask.shared.run()
    }
}
