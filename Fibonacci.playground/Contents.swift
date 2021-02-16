class Assignment {
    func fibonacci(n: Int) {
        var firstNumber = 0
        var secondNumber = 1
        var resultArray: Array<Int> = [firstNumber, secondNumber]
        for _ in 3...n {
            let thirdNumber = firstNumber + secondNumber
            resultArray.append(thirdNumber)
            firstNumber = secondNumber
            secondNumber = thirdNumber
        }
        print(resultArray)
    }
}

Assignment().fibonacci(n: 10)
