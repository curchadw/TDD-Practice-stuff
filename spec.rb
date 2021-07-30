require "rspec/autorun"

class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  # implement your behavior here
  def full_name
    name = [@first_name, @middle_name, @last_name]
    

    return name.reject(&:nil?).join(" ")
  end

  def full_name_with_middle_initial
     name = [@first_name, @middle_name[0], @last_name]

     name.reject(&:nil?).join(" ")
  end

  def initials
     name = [@first_name[0], @middle_name[0], @last_name[0]]

     name.reject(&:nil?).join("")
  end
end

describe Person do
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      person = Person.new(first_name: "Curtis", middle_name: 'Laurence', last_name: 'Chadwell')

      expect(person.full_name).to eq("Curtis Laurence Chadwell")
      
    end
    it "does not add extra spaces if middle name is missing" do
      person2 = Person.new(first_name: "Curtis",  last_name: 'Chadwell')

      expect(person2.full_name).to eq("Curtis Chadwell")
    end
  end

  describe "#full_name_with_middle_initial" do
    it "concatenates with just middle initial" do
      person = Person.new(first_name: "Curtis", middle_name: 'L', last_name: 'Chadwell')

      expect(person.full_name_with_middle_initial).to eq("Curtis L Chadwell")
    end
  end

  describe "#initials" do
    it "Only returns initials" do
      person = Person.new(first_name: "C", middle_name: 'L', last_name: 'C')

      expect(person.initials).to eq("CLC")
    end
  end
end