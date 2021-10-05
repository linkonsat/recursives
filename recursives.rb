
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


fibonacci_recursive(50,[0,1])