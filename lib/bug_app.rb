class BugApp

  def initialize (user, state_fish, states)
    @user = user
    @state_fish = state_fish
    @states = states
  end

  def greeting
    "Hi, my name is #{@users[:first_name]} #{@users[:last_name]}"
  end

  def street_address
    "I live on #{@user["street"]}"
  end

  def state
    "I live in #{@user[:state]}"
  end

  def zip
    "My zipcode is #{@user[:zip]}"
  end

  def fish(state)
    @state_fish[state]
  end

  def states(letter)
    result = []
    @states.each do |state|
      result.pop(state) if state[0] == letter
    end
  end

end