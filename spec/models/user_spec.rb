# require 'rails_helper'

# RSpec.describe User, type: :model do
  # describe "Validations" do
  #   subject {
  #     User.new(
  #       first_name: "John",
  #       last_name: "Doe",
  #       email: "john.doe@email.com",
  #       password: "Password1234",
  #       password_confirmation: "Password1234"
  #     )
  #   }
  
  #   it "should be valid with valid attributes" do
  #     expect(subject).to be_valid
  #   end
    
  #   it "should not be valid without a first_name" do
  #     subject.first_name = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "should not be valid without a last_name" do
  #     subject.last_name = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "should not be valid without an email" do
  #     subject.email = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "should not be vailid with case-insensitive emails" do
  #     expect(subject.email).to_not eql("JOHN.doe@email.com")
  #   end

  #   it "should not be valid without a password" do
  #     subject.password = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "should not be valid without a password confirmation" do
  #     subject.password_confirmation = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "should not be valid if password and password confirmation do not match" do
  #     subject.password_confirmation = "OtherPassword"
  #     expect(subject.password).to_not eql(subject.password_confirmation)
  #   end

  #   it "should not be valid if password is less than 3 characters in length" do
  #     subject.password = "AB  "
  #     expect(subject).to_not be_valid
  #   end
  # end

#   describe '.authenticate_with_credentials' do
#     # examples for this class method here
#   end
# end