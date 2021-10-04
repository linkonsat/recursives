
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

beers(20)