class Task {
    
    private init() {}
    
    static func shared() -> Task {
        return Task()
    }
    
    func run() -> String {
        return "\(findTheFirstTwoAndReturnIndex(input))"
    }
    
    //MARK: - Solution
    
    let input = [1, 2, 3, 4, 5]
    
    func findTheFirstTwoAndReturnIndex(_ nums: [Int]) -> Int? {
        for (index, num) in nums.enumerated() {
            if num == 2 {
                return index
            }
        }
        return nil
    }
}
