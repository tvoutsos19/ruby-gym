describe "two_fer.rb" do
  it "prints 'One for Alice, one for me!' if the user enters 'alice'", points: 1 do
    # Un-require two_fer.rb
    two_fer = $".select{|r| r.include? 'two_fer.rb'}
    $".delete(two_fer.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("alice\n")

    expect { require_relative '../../two_fer' }.to output(/One for Alice, one for me/).to_stdout
  end
end

describe "two_fer.rb" do
  it "prints 'One for Shreya, one for me!' if the user enters 'shreya'", points: 1 do
    # Un-require two_fer.rb
    two_fer = $".select{|r| r.include? 'two_fer.rb'}
    $".delete(two_fer.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("shreya\n")

    expect { require_relative '../../two_fer' }.to output(/One for Shreya, one for me/).to_stdout
  end
end

describe "two_fer.rb" do
  it "prints 'One for you, one for me!' if the user enters nothing", points: 1 do
    # Un-require two_fer.rb
    two_fer = $".select{|r| r.include? 'two_fer.rb'}
    $".delete(two_fer.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("\n")

    expect { require_relative '../../two_fer' }.to output(/One for you, one for me/).to_stdout
  end
end

describe "phrase.rb" do
  it "has a class called 'Phrase'", points: 0 do
    require_relative "../../phrase.rb"
    expect{ Phrase }.to_not raise_error(NameError),
      "Expected phrase.rb to define a class called 'Phrase', but didn't."
  end
end

describe "phrase.rb" do
  it "Phrase class has an attribute called 'body'", points: 0 do
    require_relative "../../phrase.rb"
    expect(Phrase.method_defined?(:body)).to eq(true),
      "Expected 'Phrase' class to have an attr_accessor called 'body', but didn't"
    end
  end
  
  describe "phrase.rb" do
    it "has an instance method called, 'abbreviate', that returns the abbreviation of the Phrase's body", points: 0 do
      require_relative "../../phrase.rb"
      expect(Phrase.method_defined?(:abbreviate)).to eq(true),
        "Expected 'Phrase' class to have an instance method called 'abbreviate', but didn't"
  end
end

describe "phrase.rb" do
  it "returns 'SIMUFTA' when Phrase body is 'Something - I made up from thin air'", points: 1 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Something - I made up from thin air"
    expect(phrase.abbreviate).to eq("SIMUFTA")
  end
end

describe "phrase.rb" do
  it "returns 'ROTFLSHTMDCOALM' when Phrase body is 'Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me'", points: 1 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me"
    expect(phrase.abbreviate).to eq("ROTFLSHTMDCOALM")
  end
end

describe "phrase.rb" do
  it "returns 'CMOS' when Phrase body is 'Complementary metal-oxide semiconductor'", points: 1 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Complementary metal-oxide semiconductor"
    expect(phrase.abbreviate).to eq("CMOS")
  end
end

describe "phrase.rb" do
  it "returns 'GIMP' when Phrase body is 'GNU Image Manipulation Program'", points: 1 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "GNU Image Manipulation Program"
    expect(phrase.abbreviate).to eq("GIMP")
  end
end

describe "phrase.rb" do
  it "returns 'FIFO' when Phrase body is 'First In, First Out'", points: 1 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "First In, First Out"
    expect(phrase.abbreviate).to eq("FIFO")
  end
end

describe "phrase.rb" do
  it "returns 'ROR' when Phrase body is 'Ruby on Rails'", points: 1 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Ruby on Rails"
    expect(phrase.abbreviate).to eq("ROR")
  end
end

describe "phrase.rb" do
  it "returns 'PNG' when Phrase body is 'Portable Network Graphics'", points: 1 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Portable Network Graphics"
    expect(phrase.abbreviate).to eq("PNG")
  end
end

describe "hamming.rb" do
  it "the distance_between 'GGACGGATTCTG' and 'AGGACGGATTCT' should return 9", points: 1 do
    require_relative "../../hamming.rb"
    dna = Dna.new
    dna.strand = "GGACGGATTCTG"
    other_dna = Dna.new
    other_dna.strand = "AGGACGGATTCT"
    expect(dna.distance_between(other_dna)).to eq(9)
  end
end

describe "hamming.rb" do
  it "the distance_between 'GGACTGAAATCTG' and 'GGACTGAAATCTG' should return 0", points: 1 do
    require_relative "../../hamming.rb"
    dna = Dna.new
    dna.strand = "GGACTGAAATCTG"
    other_dna = Dna.new
    other_dna.strand = "GGACTGAAATCTG"
    expect(dna.distance_between(other_dna)).to eq(0)
  end
end

describe "hamming.rb" do
  it "the distance_between 'G' and 'T' should return 1", points: 1 do
    require_relative "../../hamming.rb"
    dna = Dna.new
    dna.strand = "G"
    other_dna = Dna.new
    other_dna.strand = "T"
    expect(dna.distance_between(other_dna)).to eq(1)
  end
end

describe "hamming.rb" do
  it "the distance_between '' and '' should return 0", points: 1 do
    require_relative "../../hamming.rb"
    dna = Dna.new
    dna.strand = ""
    other_dna = Dna.new
    other_dna.strand = ""
    expect(dna.distance_between(other_dna)).to eq(0)
  end
end

describe "raindrops.rb" do
  it "should print '52' when the input is '52'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("52\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/52/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'PlingPlangPlong' when the input is '105'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("105\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/PlingPlangPlong/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'Plang' when the input is '3125'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("3125\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/Plang/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'Plong' when the input is '49'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("49\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/Plong/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'PlangPlong' when the input is '35'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("35\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/PlangPlong/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'Plang' when the input is '25'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("25\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/Plang/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'PlingPlong' when the input is '21'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("21\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/PlingPlong/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'PlingPlang' when the input is '15'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("15\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/PlingPlang/).to_stdout
  end
end

describe "isogram.rb" do
  it "String#isogram?('angola') should return false", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    # allow_any_instance_of(Object).to receive(:gets).and_return("angola\n")
    
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("angola")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'false' when the input is 'accentor'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("accentor")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is 'Emily Jung Schwartzkopf'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("Emily Jung Schwartzkopf")).to be(true)
    
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is 'six-year-old'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("six-year-old")).to be(true)
    
  end
end

describe "isogram.rb" do
  it "should print 'false' when the input is 'thumbscrew-jappingly'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)

    require_relative "../../isogram.rb"
    
    expect(String.isogram?("thumbscrew-jappingly")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is 'thumbscrew-japingly'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("thumbscrew-japingly")).to be(true)
    
  end
end

describe "isogram.rb" do
  it "should print 'false' when the input is 'alphAbet'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("alphAbet")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'false' when the input is 'eleven'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("eleven")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is 'isogram'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("isogram")).to be(true)
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is ''", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("")).to be(true)
  end
end
