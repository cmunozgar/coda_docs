module CodaDocs
  module Entities
    class Columns < Entity
      def all(doc_id:, table_id:)
        response = connection.get("/docs/#{doc_id}/tables/#{table_id}/columns")
        response.parsed_response['items']
      end

      def find(doc_id:, table_id:, column_id:)
        connection.get("/docs/#{doc_id}/tables/#{table_id}/columns/#{column_id}")
      end
    end
  end
end
