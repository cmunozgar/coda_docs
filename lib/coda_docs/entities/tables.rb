module CodaDocs
  module Entities
    class Tables < Entity
      def all(doc_id, options = {})
        response = CodaDocs::Connection.get("/docs/#{doc_id}/tables", query: options)
        response.parsed_response['items']
      end

      def find(doc_id, table_id, options = {})
        CodaDocs::Connection.get("/docs/#{doc_id}/tables/#{table_id}", query: options)
      end
    end
  end
end
