require "bug_app"

describe BugApp do
  before do
     @bugs = [
       @user = {
         name: {
           first: "Elmer",
           last: "Fudd"
         },
         address: {
           street: "1062 Delaware St.",
           city: "Denver",
           "state" => "CO",
           zipcode: 80204
         }
       },
       @state_fish = {
         Hawaii: {name: "Humuhumunukunukuapua'a"},
         California: {name: "Golden Trout"},
         Colorado: {name: "Greenback Cutthroat Trout"},
         Utah: {name: "Bonneville Cutthroat Trout"},
         Wyoming: {name: "Cutthroat Trout"},
         South_Dakota: {name: "Walleye"},
         Nebraska: {name: "Channel Catfish"}
       },
       @states = %w(Hawaii California Colorado Utah Wyoming South_Dakota Nebraska)
     ]
  end


describe BugApp do
  def bugs(user, state_fish, states)
    BugApp.new(user, state_fish, states)
  end


  it "should return a greeting" do
    expect(bugs.greeting).to eq("Hi, my name is Elmer Fudd")

  end


  it "should return street address" do
    expect(bugs.street_address).to eq("I live on 1062 Delaware St.")
  end



  it "should return the state" do
    expect(bugs.state).to eq("I live in CO")
  end



  it "should return the zipcode" do
    expect(bugs.zip_code).to eq("My zipcode is 80204")
  end



  it "should return the correct state fish" do
    expect(bugs.fish("Hawaii")).to eq("Humuhumunukunukuapua'a")
  end



  it "should return an array with the states starting with a specific letter" do
    expect(bugs.states("C")).to eq(["California", "Colorado"])
  end


end
  end

