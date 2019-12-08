module CodaDocs
  module Entities
    class Account
      class << self
        def whoami
          CodaDocs::Connection.get('/whoami')
        end
      end
    end
  end
end
