import Foundation


public struct StageOne {
    
    public init() {}
    
    
    
    
    // MARK:  Odd and Even
    
    public func isEvenOrOdd(_ num:Int) -> String {
        return num % 2 == 0 ? "Even" : "Odd"
    }
    
    public func isEvenOrOdd2(_ num:Double) -> String {
        return num.remainder(dividingBy: 2) == 0 ? "Even" : "Odd"
    }
    
    
    
    
    // MARK:  Average
    
    public func getAverageOfArray(_ arr:[Int]) -> Double {
        return Double(arr.reduce(0, +)) / Double(arr.count)
    }
    
    

    
    // MARK:  Sum of factors
    
    public func getSumOfFactors(_ num:Int) -> Int {
        guard num != 0 else { return 0 }
            
        return Array(1...num).filter{ num % $0 == 0 }.reduce(0, +)
    }
    
    
    
    
    // MARK:  Add digits
    
    public func getSumOfDigits(_ n:Int) -> Int {
        return String(n).reduce(0){ $0 + Int(String($1))! }
    }

    
    
    
    // MARK:  Determine the square root of an integer
    
    public func addOneIfSquareRootOfInteger(_ n:Int64) -> Int64 {
        let sqrtedNumber = sqrt(Double(n))
        
        return sqrtedNumber.truncatingRemainder(dividingBy: 1.0) == 0 ? Int64(pow(sqrtedNumber + 1, 2)) : -1
    }

    
    
    
    // MARK: Flip natural numbers to an array
    
    public func flipNumbersToArray(_ n:Int64) -> [Int] {
        return String(n).compactMap{Int(String($0))}.reversed()
    }
    
    
    
    
    // MARK: Number of p and y in string
    
    public func AreNumbersOfPAndYEqual(_ s:String) -> Bool {
        let string = s.lowercased()
        var count = 0

        for c in string {
            
            if c == "p" {
                count += 1
                continue
            }
            
            if c == "y" {
                count -= 1
                continue
            }
        }

        return count == 0 ? true : false
    }
    
    public func AreNumbersOfPAndYEqual2(_ s:String) -> Bool {
        let string = s.lowercased()
        
        return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
    }
    
    
    
    
    // MARK: Harshad number
    
    public func isHarshadNumber(_ x:Int) -> Bool {
        return x % String(x).reduce(0){ $0 + Int(String($1))! } == 0
    }
    
    
    
    
    // MARK: Convert string to integer
    
    public func convertToInteger(_ s:String) -> Int {
        return Int(s)!
    }
    
    
    
    
    // MARK: Placing Integers in Descending Order
    
    public func descend(_ n:Int64) -> Int64 {
        return Int64(String(String(n).sorted{ $0 > $1 }))!
    }
    
    
    
    
    // MARK: N numbers spaced by x
    
    public func addSpace(_ x:Int, _ n:Int) -> [Int64] {
        let arr = Array<Int>(1...n)
        
        return arr.map{ Int64($0 * x) }
    }
    
    
    
    
    // MARK: Find a number whose remainder is 1.
    
    public func getNumberRemainderOne(_ n:Int) -> Int {
        var x = 1
        
        repeat { x += 1 } while n % x != 1

        return x
    }
    
    
    
    
    // MARK: Sum between two integers
    
    public func sum(_ a:Int, _ b:Int) -> Int64 {
        return Int64(max(a,b) - min(a,b) + 1) * Int64(a + b) / Int64(2)
    }
    
    
    
    
    // MARK: Find Kim Seobang in Seoul
    
    public func findKim(_ seoul:[String]) -> String {
        let location = seoul.firstIndex(of: "Kim")
        
        return "김서방은 \(location!)에 있다"
    }
    
    
    
    
    // MARK: Hide cell phone number
    
    public func hidePhoneNumber(_ phone_number:String) -> String {
        return String(repeating:"*", count:phone_number.count-4) + phone_number.suffix(4)
    }
    
}
