module CodaDocs
  module Entities
    class Rows
      def all(doc_id, table_id, options = {})
        response = self.class.get("/docs/#{doc_id}/tables/#{table_id}/rows", query: options)
        response.parsed_response['items']
      end

      def find(doc_id, table_id, row_id, options = {})
        self.class.get("/docs/#{doc_id}/tables/#{table_id}/rows/#{row_id}", query: options)
      end

      def delete(doc_id, table_id, row_id)
        self.class.delete("/docs/#{doc_id}/tables/#{table_id}/rows/#{row_id}")
      end
    end
  end
end
