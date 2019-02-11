require 'rails_helper' 

RSpec.describe User, type: :model do 

before(:each) do 
@user = User.create(first_name: "John", last_name: "Doe", email: "jojo3@yopmail.com", description: "hello je suis bogoss salut ca va blablabla", password: "azerty") 
end 

context "validation" do 

it "is valid with valid attributes" do 
expect(@user).to be_a(User) 
expect(@user).to be_valid 
end 

describe "#first_name" do 
it "should not be valid without first_name" do 
bad_user = User.create(last_name: "Doe") 
expect(bad_user).not_to be_valid 
# test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name. 
expect(bad_user.errors.include?(:first_name)).to eq(true)
end 
end 

describe "#last_name" do 
it "should not be valid without last_name" do 
bad_user = User.create(first_name: "John") 
expect(bad_user).not_to be_valid 
expect(bad_user.errors.include?(:last_name)).to eq(true) 
end 
end 

describe "#password" do 
it "should not be lower that 3 characters" do 
invalid_user = User.create(first_name: "John", last_name: "Doe", password: "aa") 
expect(invalid_user).not_to be_valid 
expect(invalid_user.errors.include?(:password)).to eq(true) 
end 
end 

end 

context "associations" do 

describe "event" do 
it "should have_many events" do 
event = Event.create(user: @user) 
expect(@user.event.include?(event)).to eq(true) 
end 
end 

end 



context "public instance methods" do 

describe "#full_name" do 

it "should return a string" do 
expect(@user.full_name).to be_a(String) 
end 

it "should return the full name" do 
user_1 = User.create(first_name: "John", last_name: "Doe", password: "azerty") 
expect(user_1.full_name).to eq("John Doe") 
user_2 = User.create(first_name: "Jean-Michel", last_name: "Durant", password: "kikou_du_75") 
expect(user_2.full_name).to eq("Jean-Michel Durant") 
end 
end 

end 

end
