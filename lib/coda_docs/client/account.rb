module CodaDocs
  class Client
    module Account
      def whoami
        self.class.get('/whoami')
      end
    end
  end
end
