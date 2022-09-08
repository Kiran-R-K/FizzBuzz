def fizzbuzz
  def maximum_number_request
    puts "Input a maximum number"
    return gets.chomp.to_i
  end

  maximum_number = maximum_number_request

  for i in 1..maximum_number
    result = []
    fizz = 'Fizz'
    fezz = 'Fezz'
    buzz = 'Buzz'
    bang = 'Bang'
    bong = 'Bong'
    if i % 11 == 0
      result << bong
    elsif i % 3 == 0
      result << fizz
      if i % 5 == 0
        result << buzz
        if i % 7 == 0
          result << bang
        end
      else
        if i % 7 == 0
          result << bang
        end
      end
    elsif i % 5 == 0
      result << buzz
      if i % 7 == 0
        result << bang
      end
    elsif i % 7 == 0
      result << bang
    elsif i % 13 == 0
      result << fezz
    else
      result << i
    end
    if i % 13 == 0 && result[0] != fezz
      if result[0] == fizz
          result.insert(1,fezz)
      else
        result.insert(0,fezz)
      end
    end
    if i % 17 == 0
      result = result.reverse
    end
    puts result.join
  end


end

fizzbuzz
