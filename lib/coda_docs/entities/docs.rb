module CodaDocs
  module Entities
    class Docs < Entity
      def all(options = nil)
        response = connection.get('/docs', query: options)
        paginate_response(response)
      end

      def find(doc_id)
        connection.get("/docs/#{doc_id}")
      end

      def create(options)
        connection.post(
          '/docs',
          body: options.to_json
        )
      end

      def delete(doc_id)
        connection.delete("/docs/#{doc_id}")
      end

      def publish(doc_id, options)
        connection.put(
          "/docs/#{doc_id}/publish",
          body: options.to_json
        )
      end

      def unpublish(doc_id)
        connection.delete("/docs/#{doc_id}/publish")
      end
    end
  end
end
