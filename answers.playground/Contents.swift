let fruits = [500.0, 300.0, 100.0, 600.0, 1000.0, 80.0]
func fruitDC(howmuch: Double) -> Double {
    return howmuch * 0.7
}

//Q1
let array : [Int] = [5,2,6,1,8]

var sortedArray : [Int] = array

for i in 0...sortedArray.count-1 {
    for j in i...sortedArray.count-1 {
        if sortedArray[i] > sortedArray[j] {
            sortedArray.swapAt(i, j)
        }
    }
}

var result : Int = 0

for i in 0...sortedArray.count-1 {
    if sortedArray[i] > sortedArray[sortedArray.count/2] {
        result += sortedArray[i]
    }
}
print(result)

//A1
let ans = array.sorted{(item1,item2)-> Bool in return item1<item2}
let ans1 = ans.filter{(item)->Bool in return item>ans[2]}
let ans2 = ans1.reduce(0,{(ret,item)-> Int in return ret+item})
print(ans2)


//Q2
let str : [String] = ["a","b","c","d","e","f","g"]

var repeat3 : [String] = []

var temp : String = ""

for i in str {
    for _ in 1...3 {
        temp += i
    }
    repeat3.append(temp)
    temp = ""
}

var result2 : String = ""

for i in repeat3 {
    result2 += i
}
print(result2)


//A2
let answer = str.reduce("",{(st,item)-> String in return st+item+item+item})
print (answer)



//Q3 choose fruits which are more expensive than 300 after getting 30% DC
var expensivefruits : [Double] = []

for fruit in fruits {
    if fruitDC(howmuch: fruit) > 300 {
        expensivefruits += [fruitDC(howmuch: fruit)]
    }
}

//A3
expensivefruits = fruits.filter { (item) -> Bool in
    return item*0.7 > 300.0
}



//Q4 get the sum of prices of all fruits after getting 30% DC
func fruitsum(fruit1: Double, fruit2: Double) -> Double{
    return fruit1 + fruit2
}

var sum : Double = 0.0
for fruit in fruits{
    sum = fruitsum(fruit1: sum, fruit2: fruitDC(howmuch: fruit))
}

//A4
sum=fruits.reduce(0, { (ret, item) -> Double in
    return ret + item*0.7
})

//Q5 get the sum of prices of fruits which are more cheap than 500
var sum2: Double = 0.0
for fruit in fruits{
    if fruit < 500.0{
        sum2 = fruitsum(fruit1: sum2, fruit2: fruit)
    }
}

//A5
sum2=fruits.reduce(0, { (ret, item) -> Double in
    if item<500.0 {return ret+item}
    return ret
})
