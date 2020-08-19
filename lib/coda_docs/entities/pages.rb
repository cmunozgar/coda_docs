module CodaDocs
  module Entities
    class Pages < Entity
      def all(doc_id, options = nil)
        response = connection.get("/docs/#{doc_id}/pages", query: options)
        parse_response(response)
      end

      def find(doc_id, page_id, options = nil)
        connection.get("/docs/#{doc_id}/pages/#{page_id}", query: options)
      end

      def update(doc_id, page_id, options)
        connection.put(
          "/docs/#{doc_id}/pages/#{page_id}",
          body: options.to_json
        )
      end
    end
  end
end
