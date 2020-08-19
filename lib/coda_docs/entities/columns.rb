module CodaDocs
  module Entities
    class Columns < Entity
      def all(doc_id, table_id, options = nil)
        response = connection.get("/docs/#{doc_id}/tables/#{table_id}/columns", query: options)
        parse_response(response)
      end

      def find(doc_id, table_id, column_id)
        connection.get("/docs/#{doc_id}/tables/#{table_id}/columns/#{column_id}")
      end
    end
  end
end
