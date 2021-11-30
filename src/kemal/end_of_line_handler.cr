module Kemal
  class EndOfLineHandler
    include HTTP::Handler

    def call(context)
      Kemal::Exceptions::RouteNotFound.new(context)
    end
  end
end
