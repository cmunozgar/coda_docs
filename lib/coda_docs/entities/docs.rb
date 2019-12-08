module CodaDocs
  module Entities
    class Docs
      class << self
        def all(options = {})
          response = CodaDocs::Connection.get('/docs', query: options)
          response.parsed_response['items']
        end

        def find(doc_id, options = {})
          CodaDocs::Connection.get("/docs/#{doc_id}", query: options)
        end

        def create(title: 'Untitled', timezone: 'America/Los_Angeles', source: nil, folder_id: nil)
          CodaDocs::Connection.post(
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
end
