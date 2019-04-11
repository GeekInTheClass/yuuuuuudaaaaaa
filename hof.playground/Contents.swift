//start 에서 end 사이의 수 중에서 2혹은 3으로 나누어 떨어지는 값들의 합
var start1:Int = 1
var end1:Int=8
func f1(start:Int, end:Int)->Int{
    var sum=0
    for n in start...end{
        if(n%2==0){sum+=n}
        else if(n%3==0){sum+=n}
    }
    return sum
}
var answer1=f1(start:start1, end:end1)
print(answer1)


//[start2...end2] 배열을 받는다. 10보다 작은 수는 -부호로 바꿔주고 모든 원소의 합을 출력한다.
var start2:Int = 1
var end2:Int=8
func f2(start:Int, end:Int)->Int{
    var sum=0
    for n in start...end{
        if(n<10){sum-=n}
        else{sum+=n}
    }
    return sum
}

var answer2 = f2(start:start2, end:end2)
print(answer2)




//입력된 배열중에서 10보다 작은 원소중의 최댓값을 출력(정답은 0보다 크다)
func f3(array:[Int])->Int{
    var max:Int=0
    for n in array{
        if n<10{
            if n>max{
                max=n
            }
        }
    }
    return max
}
var array3:[Int] = [1, 23, 22, 17, 84, 11, 8, 2, 4, 3, 5, 1, 2, -1 ,-3]

var answer3 = f3(array:array3)
print(answer3)


//배열에있는 숫자들 곱해서 출력하기
var numbers = [3,2,7,5,4,1]
func mult() -> (){
    var result = 1
    for i in numbers{
        result *= i
    }
    print(result)
}



mult()
//배열에 있는 숫자들 내림차순으로 정렬해서 출력하기
func dsort() -> (){
    for x in 0...numbers.count-2{
        for i in x+1 ... numbers.count-1{
            if(numbers[i]>numbers[x]){
                let a = numbers[i]
                let b = numbers[x]
                numbers[i] = b
                numbers[x] = a
            }
        }
        print(numbers[x] , terminator:" ")
    }
    print(numbers[numbers.count-1])
}
dsort()
