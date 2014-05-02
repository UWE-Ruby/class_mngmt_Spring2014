require 'spec_helper'

describe Student do
  let(:unamed_student) { Student.new(email: "alicebob@example.com") }
  let(:named_student) { Student.new(full_name: "Alice Bob")}

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
