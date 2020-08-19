module CodaDocs
  module Entities
    class Categories < Entity
      def all
        response = connection.get('/categories')
        parse_response(response)
      end
    end
  end
end
