import Foundation


struct StageOne {
    
    
    // MARK:  Odd and Even
    
    func isEvenOrOdd(_ num:Int) -> String {
        return num % 2 == 0 ? "Even" : "Odd"
    }
    
    func isEvenOrOdd2(_ num:Double) -> String {
        return num.remainder(dividingBy: 2) == 0 ? "Even" : "Odd"
    }
    
    
    
    
    // MARK:  Average
    
    func getAverageOfArray(_ arr:[Int]) -> Double {
        return Double(arr.reduce(0, +)) / Double(arr.count)
    }
    
    

    
    // MARK:  Sum of factors
    
    func getSumOfFactors(_ num:Int) -> Int {
        guard num != 0 else { return 0 }
            
        return Array(1...num).filter{ num % $0 == 0 }.reduce(0, +)
    }
    
    
    
    
    // MARK:  Add digits
    
    func getSumOfDigits(_ n:Int) -> Int {
        return String(n).reduce(0){ $0 + Int(String($1))! }
    }

    
    
    
    // MARK:  Determine the square root of an integer
    
    func getSumOfDigits2(_ n:Int64) -> Int64 {
        let sqrtedNumber = sqrt(Double(n))
        
        return sqrtedNumber.truncatingRemainder(dividingBy: 1.0) == 0 ? Int64(pow(sqrtedNumber + 1, 2)) : -1
    }

}
