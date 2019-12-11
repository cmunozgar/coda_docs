module CodaDocs
  module Entities
    class Docs < Entity
      def all
        response = connection.get('/docs')
        response.parsed_response['items']
      end

      def find(doc_id)
        connection.get("/docs/#{doc_id}")
      end

      def create(title: 'Untitled', timezone: 'America/Los_Angeles', source: nil, folder_id: nil)
        connection.post(
          '/docs',
          body: {
            title: title,
            sourceDoc: source,
            timezone: timezone,
            folderId: folder_id
          }.to_json
        )
      end
    end
  end
end
