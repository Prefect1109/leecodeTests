import Foundation

class SolutionManager {
        
    private init() {}
    
    static func shared() -> SolutionManager {
        return SolutionManager()
    }
    
    func run() {
        print("Test task: \(task())")
        print("SingleNumber: \(singleNumber())")
    }
    
    //MARK: - Solutions
    
    // TaskName
    func task() -> String {
        return Task.shared().run()
    }
            
    // Single number
    func singleNumber() -> String {
        return SingleNumberTask.shared().run()
    }
}
