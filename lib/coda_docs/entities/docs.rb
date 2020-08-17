module CodaDocs
  module Entities
    class Docs < Entity
      def all
        response = connection.get('/docs', query: options)
        parse_response(response)
      end

      def find(doc_id)
        connection.get("/docs/#{doc_id}")
      end

      def create(title: 'Untitled', timezone: 'America/Los_Angeles', source_doc: nil, folder_id: nil)
        connection.post(
          '/docs',
          body: {
            title: title,
            sourceDoc: source_doc,
            timezone: timezone,
            folderId: folder_id
          }.to_json
        )
      end

      def delete(doc_id:)
        connection.delete("/docs/#{doc_id}")
      end

      def publish(doc_id:, slug:, discoverable:, earn_credit:, category_names:, mode:)
        connection.put(
          "/docs/#{doc_id}/publish",
          body: {
            slug: slug,
            discoverable: discoverable,
            earnCredit: earn_credit,
            categoryNames: category_names,
            mode: mode
          }.to_json
        )
      end

      def unpublish(doc_id:)
        connection.delete("/docs/#{doc_id}/publish")
      end
    end
  end
end
