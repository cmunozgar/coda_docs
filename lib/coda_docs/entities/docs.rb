module CodaDocs
  module Entities
    class Docs
      def all(options = {})
        response = self.class.get('/docs', query: options)
        response.parsed_response['items']
      end

      def find(doc_id, options = {})
        self.class.get("/docs/#{doc_id}", query: options)
      end

      def create(title: 'Untitled', timezone: 'America/Los_Angeles', source: nil, folder_id: nil)
        self.class.post(
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
