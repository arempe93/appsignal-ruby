module Appsignal
  module System
    def self.heroku?
      ENV.key? "DYNO".freeze
    end
  end
end
