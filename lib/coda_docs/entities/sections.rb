module CodaDocs
  module Entities
    class Sections
      class << self
        def all(doc_id, options = {})
          response = CodaDocs::Connection.get("/docs/#{doc_id}/sections", query: options)
          response.parsed_response['items']
        end

        def find(doc_id, section_id, options = {})
          CodaDocs::Connection.get("/docs/#{doc_id}/sections/#{section_id}", query: options)
        end
      end
    end
  end
end
