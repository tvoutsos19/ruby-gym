describe "secret_encoder.rb" do
  it "should print '3 n22d t4 b2 m4r2 s2cr2t', when the input is 'I need to be more secret'", points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("I need to be more secret\n")
    expect { require_relative '../../secret_encoder.rb' }.to output(/3 n22d t4 b2 m4r2 s2cr2t/).to_stdout
  end
end

describe "secret_encoder.rb" do
  it "should print 'D4n't t2ll 1ny4n2 45r c4d2' when the input is 'don't tell anyone our code'", points: 1 do

 # Un-require secret_encoder.rb
    secret_encoder = $".select{|r| r.include? 'secret_encoder.rb'}
    $".delete(secret_encoder.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("don't tell anyone our code\n")
    expect { require_relative '../../secret_encoder.rb' }.to output(/D4n't t2ll 1ny4n2 45r c4d2/).to_stdout
  end
end
