
require 'pry-byebug'
def collatz(n, steps)

    if (n == 1)
        return [n,steps]
    elsif (n.even?)
        n = n / 2
        steps += 1
        collatz(n, steps)
    elsif (n.odd?)
        steps += 1
        n = 3 * n  + 1
        collatz(n,steps)
    end 
end

def factorial(n,sum)
   binding.pry
    if (n == 1)
        return sum
    elsif sum == 0
        sum = n * (n - 1)
        n -= 1
        factorial(n,sum)
    else
        n -= 1
        sum = sum * n
        factorial(n,sum)

    end
end

def beers(n)
    if (n == 0)
        return "No more beers on the wall :("
    else
        puts "there are #{n} beers of bottles on the wall!"
        beers(n -= 1)
    end
end

def fibonacci(n)
    array = [0,1]
    i = 0
    while array[i + 1] < n 
        binding.pry
    array.push(array[i] + array[i + 1])
    i += 1
    end
     array
end

def fibonacci_recursive(n,start)
    start = start
    if (start[start.length - 1] > n)
        p start
    else
        fibonacci_recursive(n,start.push(start[start.length-2] + start[start.length-1]))
    end
    end


def merge_sort_recursive(list)
    new_list = list
    empty_list = []
    binding.pry
    if (list.length > 999991)
        return new_list
    else
        i = 0
        while i < list.length do 
            binding.pry
            new_list[i] > new_list[i + 1] ?  empty_list.push([new_list[i+1],new_list[i]]) : empty_list.push(new_list[i..i+ 1])
            i += 2
        end
        
        binding.pry
        merge_sort_recursive(empty_list.flatten)
    end
end

def left_side(left_side)
end
def right_side(right_side)
end
p merge_sort_recursive([5,2,1,3,6,4])