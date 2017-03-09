require("rspec")
  require("pg")
  require("service")

  DB = PG.connect({:dbname => "vintage_test"})

  RSpec.configure do |config|
    config.after(:each) do
      DB.exec("DELETE FROM services *;")
    end
  end
