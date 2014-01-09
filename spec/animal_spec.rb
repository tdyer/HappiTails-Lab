require 'spec_helper'
require_relative '../lib/animal'


describe Animal do
  let(:animal_name) { 'joe' }
  let(:animal_age) { '3' }
  let(:animal_species) { 'Dog' }
  let(:animal_gender) { 'Female' }

  subject { Animal.new(animal_name,animal_age, animal_species,animal_gender ) }

  it "should have an Animal object" do
    subject.should be_an_instance_of Animal
  end

  its(:name) {should eq animal_name }
  its(:age) {should eq animal_age }
  its(:species) {should eq animal_species }
  its(:gender) {should eq animal_gender }
end
