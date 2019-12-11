module CodaDocs
  module Entities
    class Tables < Entity
      def all(doc_id)
        response = connection.get("/docs/#{doc_id}/tables")
        response.parsed_response['items']
      end

      def find(doc_id:, table_id:)
        connection.get("/docs/#{doc_id}/tables/#{table_id}")
      end
    end
  end
end
