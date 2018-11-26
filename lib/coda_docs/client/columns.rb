module CodaDocs
  class Client
    module Columns
      def columns(doc_id, table_id, options = {})
        response = self.class.get("/docs/#{doc_id}/tables/#{table_id}/columns", query: options)
        response.parsed_response['items']
      end

      def column(doc_id, table_id, column_id, options = {})
        self.class.get("/docs/#{doc_id}/tables/#{table_id}/columns/#{column_id}", query: options)
      end
    end
  end
end
