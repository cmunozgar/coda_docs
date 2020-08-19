module CodaDocs
  module Entities
    class Tables < Entity
      def all(doc_id, options = nil)
        response = connection.get("/docs/#{doc_id}/tables", query: options)
        parse_response(response)
      end

      def find(doc_id, table_id)
        connection.get("/docs/#{doc_id}/tables/#{table_id}")
      end
    end
  end
end
