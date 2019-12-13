module CodaDocs
  module Entities
    class Account < Entity
      def whoami
        connection.get('/whoami')
      end
    end
  end
end
