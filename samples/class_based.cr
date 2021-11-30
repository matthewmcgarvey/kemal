require "../src/kemal"

class UserApplication < Kemal::Application
  get "/users" do
    "users list..."
  end
end

class CarApplication < Kemal::Application
  get "/cars" do
    "cars list..."
  end
end

class RootApplication < Kemal::Application
  mount UserApplication
  mount CarApplication

  get "/" do
    "home"
  end
end

RootApplication.run
