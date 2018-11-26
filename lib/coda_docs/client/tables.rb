module CodaDocs
  class Client
    module Tables
      def tables(doc_id, options = {})
        response = self.class.get("/docs/#{doc_id}/tables", query: options)
        response.parsed_response['items']
      end

      def table(doc_id, table_id, options = {})
        self.class.get("/docs/#{doc_id}/tables/#{table_id}", query: options)
      end
    end
  end
end
