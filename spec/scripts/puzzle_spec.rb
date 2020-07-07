
# describe "integer_math.rb" do
#   it "should output '1'", points: 1 do
#     math_file = "integer_math.rb"
#     file_contents = File.read(math_file)
#     File.foreach(math_file).with_index do |line, line_num|
#       if line.include?("p") || line.include?("puts")
#         expect(line).to_not match(/1/),
#           "Expected 'integer_math.rb' to NOT literally print '1', but did anyway."
#       end
#     end
#     expect { require_relative '../../integer_math' }.to output("1\n").to_stdout

#   end
# end

# describe "test_file.rb" do
#   it "should output 'true' if the entered number is odd", points: 1 do
#     # Un-require test_file.rb
#     test_file = $".select{|r| r.include? 'test_file.rb'}
#     $".delete(test_file.first)

#     allow_any_instance_of(Object).to receive(:gets).and_return("input\n")

#     expect { require_relative '../../test_file' }.to output(/output/i).to_stdout
#   end
# end

describe "dummy" do
  it "this project is not graded", points: 1 do
    expect(true).to be true
  end
end


describe "leap_year.rb" do
  it "prints '2016 is a leap year!' if the user enters '2016'", points: 1 do
    # Un-require leap_year.rb
    leap_year = $".select{|r| r.include? 'leap_year.rb'}
    $".delete(leap_year.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("2016\n")

    expect { require_relative '../../leap_year' }.to output(/2016 is a leap year/i).to_stdout
  end
end

describe "leap_year.rb" do
  it "prints '1804 is a leap year!' if the user enters '1804'", points: 1 do
    # Un-require leap_year.rb
    leap_year = $".select{|r| r.include? 'leap_year.rb'}
    $".delete(leap_year.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("1804\n")

    expect { require_relative '../../leap_year' }.to output(/1804 is a leap year/i).to_stdout
  end
end

describe "leap_year.rb" do
  it "prints '1800 is not a leap year.' if the user enters '1800'", points: 1 do
    # Un-require leap_year.rb
    leap_year = $".select{|r| r.include? 'leap_year.rb'}
    $".delete(leap_year.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("1800\n")

    expect { require_relative '../../leap_year' }.to output(/1800 is not a leap year/i).to_stdout
  end
end

describe "leap_year.rb" do
  it "prints '2200 is not a leap year.' if the user enters '2200'", points: 1 do
    # Un-require leap_year.rb
    leap_year = $".select{|r| r.include? 'leap_year.rb'}
    $".delete(leap_year.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("2200\n")

    expect { require_relative '../../leap_year' }.to output(/2200 is not a leap year/i).to_stdout
  end
end

describe "character_types.rb" do
  it "finds 8 letters, 3 spaces, and 4 digits when the user enters 'here 12 plus 25'", points: 1 do
    # Un-require character_types.rb
    character_types = $".select{|r| r.include? 'character_types.rb'}
    $".delete(character_types.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("here 12 plus 25\n")

    expect { require_relative '../../character_types' }.to output(/Number of letters in the string is: 8.?\n.?Number of spaces in the string is: 3.?\n.?Number of digits in the string is: 4/i).to_stdout
  end
end

describe "character_types.rb" do
  it "finds 4 letters, 5 spaces, and 7 digits when the user enters 'game 1 12 58 09 '", points: 1 do
    # Un-require character_types.rb
    character_types = $".select{|r| r.include? 'character_types.rb'}
    $".delete(character_types.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("game 1 12 58 09 \n")

    expect { require_relative '../../character_types' }.to output(/Number of letters in the string is: 4.?\n.?Number of spaces in the string is: 5.?\n.?Number of digits in the string is: 7/i).to_stdout
  end
end

describe "character_types.rb" do
  it "finds 0 letters, 0 spaces, and 0 digits when the user enters ''", points: 1 do
    # Un-require character_types.rb
    character_types = $".select{|r| r.include? 'character_types.rb'}
    $".delete(character_types.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("\n")

    expect { require_relative '../../character_types' }.to output(/Number of letters in the string is: 0.?\n.?Number of spaces in the string is: 0.?\n.?Number of digits in the string is: 0/i).to_stdout
  end
end

describe "count_the.rb" do
  it "prints \"'the' appeared 5 times\" when the user enters 'the cabbage, the bagel, the apple, the drink, the bread'", points: 1 do
    # Un-require count_the.rb
    count_the = $".select{|r| r.include? 'count_the.rb'}
    $".delete(count_the.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("the cabbage, the bagel, the apple, the drink, the bread\n")

    expect { require_relative '../../count_the' }.to output(/.?the.? appeared 5 times/i).to_stdout
  end
end

describe "count_the.rb" do
  it "prints 'the' appeared 3 times' when the user enters 'the, beginnning the end and the middle'", points: 1 do
    # Un-require count_the.rb
    count_the = $".select{|r| r.include? 'count_the.rb'}
    $".delete(count_the.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("the, beginnning the end and the middle\n")

    expect { require_relative '../../count_the' }.to output(/.?the.? appeared 3 times/i).to_stdout
  end
end

describe "count_the.rb" do
  it "prints 'the' appeared 2 times' when the user enters 'the— then, the", points: 1 do
    # Un-require count_the.rb
    count_the = $".select{|r| r.include? 'count_the.rb'}
    $".delete(count_the.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("the— then, the\n")

    expect { require_relative '../../count_the' }.to output(/.?the.? appeared 2 times/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '1 points' when the user enters '0,10", points: 1 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("0,10\n")

    expect { require_relative '../../darts' }.to output(/1 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '0 points' when the user enters '-9,9", points: 1 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("-9,9\n")

    expect { require_relative '../../darts' }.to output(/0 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '5 points' when the user enters '-5,0", points: 1 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("-5,0\n")

    expect { require_relative '../../darts' }.to output(/5 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '5 points' when the user enters '0.8,-0.8", points: 1 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("0.8,-0.8\n")

    expect { require_relative '../../darts' }.to output(/5 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '10 points' when the user enters '0,-1", points: 1 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("0,-1\n")

    expect { require_relative '../../darts' }.to output(/10 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '10 points' when the user enters '0,0", points: 1 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("0,0\n")

    expect { require_relative '../../darts' }.to output(/10 points/i).to_stdout
  end
end

describe "dice_roll.rb" do
  it "prints 'Congratulations' when the user enters a correct guess", points: 1 do
    # Un-require dice_roll.rb
    dice_roll = $".select{|r| r.include? 'dice_roll.rb'}
    $".delete(dice_roll.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("4\n")
    allow_any_instance_of(Object).to receive(:rand).and_return(4)

    expect { require_relative '../../dice_roll' }.to output(/You guessed correctly/i).to_stdout
  end
end

describe "dice_roll.rb" do
  it "prints 'Shame on you' when the user enters an incorrect guess", points: 1 do
    # Un-require dice_roll.rb
    dice_roll = $".select{|r| r.include? 'dice_roll.rb'}
    $".delete(dice_roll.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("1\n")
    allow_any_instance_of(Kernel).to receive(:rand).and_return(5)

    expect { require_relative '../../dice_roll' }.to output(/Shame on you\. The die landed on 5/i).to_stdout
  end
end
