module CodaDocs
  module Entities
    class Entity
      def initialize(access_token)
        @access_token = access_token
      end

      def connection
        conn = CodaDocs::Connection
        conn.default_options.merge!(
          headers: {
            'Authorization' => "Bearer #{@access_token}",
            'Content-Type' => 'application/json'
          }
        )
        conn
      end
    end
  end
end


