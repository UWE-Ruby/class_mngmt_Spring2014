require 'spec_helper'

describe Student do
  let(:unamed_student) { Student.new(email: "alicebob@example.com", age: 30, favorite_ice_cream_flavor: 'vanilla') }
  let(:named_student) { Student.new(full_name: "Alice Bob")}


  context "testing isolated ice cream flavor validation" do

    before :each do
      @student = Student.new
    end

    it "should notify the user of a missing ice cream flavor" do

      @student.should_not be_valid
      @student.errors.full_messages.should include "Favorite ice cream flavor must be filled in!!!"

    end


  end

  context "testing name validation" do
    it "will be invalid when it doesn't have a name" do
      expect(unamed_student.valid?).to be_false
    end

    it "will be valid when it has a name" do
      unamed_student.full_name = "john jacob jingleheimer schmidt"

      expect(unamed_student.valid?).to be_true
    end
  end

  context "testing email validation" do
    it "will be invalid when it doesn't have a email" do
      expect(named_student.valid?).to be_false
    end

    it "will be invalid when it is too short" do
      named_student.email = "foo"
      expect(named_student.valid?).to be_false
    end

  end
end
