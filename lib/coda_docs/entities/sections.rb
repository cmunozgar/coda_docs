module CodaDocs
  module Entities
    class Sections < Entity
      def all(doc_id, options = {})
        response = connection.get("/docs/#{doc_id}/sections", query: options)
        response.parsed_response['items']
      end

      def find(doc_id, section_id, options = {})
        connection.get("/docs/#{doc_id}/sections/#{section_id}", query: options)
      end
    end
  end
end
