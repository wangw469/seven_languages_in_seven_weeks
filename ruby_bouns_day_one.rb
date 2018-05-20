# while loop: https://ruby-doc.org/core-2.5.0/doc/syntax/control_expressions_rdoc.html#label-while+Loop
# methos: https://ruby-doc.org/core-2.5.0/doc/syntax/methods_rdoc.html
# stiring to_i:https://ruby-doc.org/core-2.5.0/String.html#method-i-to_i
# gets:https://ruby-doc.org/core-2.5.0/IO.html#method-i-gets
# rand:https://ruby-doc.org/core-2.5.0/Random.html#method-c-rand
# ruby variable scope:https://www.techotopia.com/index.php/Ruby_Variable_Scope
# if expression:https://ruby-doc.org/core-2.5.0/doc/syntax/control_expressions_rdoc.html#label-if+Expression
def isNumberInRange(number)
    return (0 <= number and number < maxRandNumber)
end

def inputHintsNumberInRange
    puts "Try something >= 0 and < #{maxRandNumber()}:"
end

def inputHintsLarggerNumber
    puts 'Try something largger:'
end

def inputHintsSamllerNumber
    puts 'Try something smaller:'
end

def successHint
    puts "Congratulations! You got the right number:#{numberToGuess()}"
end

def maxRandNumber
    return 10
end

def generateNumberToGuess
    $number_to_guss = rand(maxRandNumber())
end

def numberToGuess
    return $number_to_guss
end

def isNumber(string)
    # TODO
    return true
end

def getUserGuess
    inputString = gets()
    if (nil == inputString || false == isNumber(inputString)) then
        return -1
    else
        return inputString.to_i()
    end
end

generateNumberToGuess()
inputHintsNumberInRange()
userGuessNumber = getUserGuess()
while (userGuessNumber != numberToGuess()) do
    # puts numberToGuess()
    if (isNumberInRange(userGuessNumber)) then
        if (userGuessNumber < numberToGuess()) then
            inputHintsLarggerNumber()
        else
            inputHintsSamllerNumber()
        end
    else
        inputHintsNumberInRange()
    end
    userGuessNumber = getUserGuess()
end
successHint()

