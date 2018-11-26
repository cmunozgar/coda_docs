module CodaDocs
  class Client
    module Rows
      def rows(doc_id, table_id, options = {})
        response = self.class.get("/docs/#{doc_id}/tables/#{table_id}/rows", query: options)
        response.parsed_response['items']
      end

      def row(doc_id, table_id, row_id, options = {})
        self.class.get("/docs/#{doc_id}/tables/#{table_id}/rows/#{row_id}", query: options)
      end
    end
  end
end
