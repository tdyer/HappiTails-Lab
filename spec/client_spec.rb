require 'spec_helper'
require 'pry'
require_relative '../lib/person'


describe Person do
  let(:p_name) { 'Morty' }
  let(:p_age) { 73 }
  let(:fido) {  Animal.new('fido', 4, 'Dog', 'Female') }
  let(:pita) {  Animal.new('pita', 7, 'Cat', 'Male') }
  let(:pets) { [ fido, pita ]}
  subject { Person.new(p_name, p_age)}


  it "should have a person instance/object" do
    subject.should be_an_instance_of Person
  end
  its(:name) { should eq p_name}
  its(:age) { should eq p_age}

  it "should be able to accept a pet" do
    subject.add_pet(fido)
    subject.pets[fido.name] == fido
  end
  
  describe "Person with pets" do
    let(:pet_count) { pets.size }
    subject do
      p = Person.new(p_name, p_age)
      pets.each do |pet|
        p.add_pet(pet)
      end
      p
    end

    it "should have the right amount of pets" do
      subject.pets.size.should == pet_count
    end
    
    it "should be able to get the pets given an animal" do
      pets.each do |pet|
        subject.get_pet(pet).should eq pet
      end
    end
    
    it "should be able to get the pets given a animal name" do
      pets.each do |pet|
        subject.get_pet(pet.name).should eq pet
      end
    end

    it "should raise an ArgumentError if trying to get a pet without an animal or animal name" do
      expect do
        subject.get_pet(33)
      end.to raise_error(ArgumentError, "Arg should be an Animal or a name of an animal")
    end

    it "should be able to give up a pet given it's name" do
      subject.give_up(fido.name).should be_true
    end
    it "should be able to give up a pet given a pet" do
      subject.give_up(fido).should be_true
    end
    it "should not be able to give up a pet given an animal that is not a pet of this person" do
      subject.give_up("bowser").should be_false
    end
    it "should not be able to give up a pet given invalid input" do
      subject.give_up(33).should be_false
    end

  end
  
end
