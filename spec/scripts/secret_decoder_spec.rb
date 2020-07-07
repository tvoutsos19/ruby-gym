describe "secret_decoder.rb" do
  it "prints 'I need to be more secret', when the input is '3 n22d t4 b2 m4r2 s2cr2t'", points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("3 n22d t4 b2 m4r2 s2cr2t\n")
    expect { require_relative '../../secret_decoder.rb' }.to output(/I need to be more secret/).to_stdout
  end
end

describe "secret_decoder.rb" do
  it "prints 'Don't tell anyone our code', when the input is 'D4n't t2ll 1ny4n2 45r c4d2'", points: 1 do

  # Un-require secret_decoder.rb
    secret_decoder = $".select{|r| r.include? 'secret_decoder.rb'}
    $".delete(secret_decoder.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("D4n't t2ll 1ny4n2 45r c4d2\n")
    expect { require_relative '../../secret_decoder.rb' }.to output(/Don't tell anyone our code/).to_stdout
  end
end

