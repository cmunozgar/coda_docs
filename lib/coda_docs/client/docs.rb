module CodaDocs
  class Client
    module Docs
      def docs(options = {})
        response = self.class.get('/docs', query: options)
        response.parsed_response['items']
      end

      def doc(doc_id, options = {})
        self.class.get("/docs/#{doc_id}", query: options)
      end

      def create_doc(title: 'Untitled', timezone: 'America/Los_Angeles', source: nil, folder_id: nil)
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
