import Foundation

func fib(_ n: Int) -> Int {
    if n < 2 { return n }

    var a = 0, b = 1
    for _ in 2...n {
        let temp = a + b
        (a, b) = (b, temp)
    }
    return b
}

func fibRec(_ n: Int) -> Int {
    if n < 2 { return n }
    return fibRec(n - 1) + fibRec(n - 2)
}

print(fib(0))
print(fib(1))
print(fib(5))
print(fib(10))
