module CodaDocs
  module Entities
    class Account
      def whoami
        self.class.get('/whoami')
      end
    end
  end
end
