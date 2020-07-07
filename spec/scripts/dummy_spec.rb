
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
