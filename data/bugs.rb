BUGS = [
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