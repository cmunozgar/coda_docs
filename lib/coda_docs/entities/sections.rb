module CodaDocs
  module Entities
    class Sections
      def sections(doc_id, options = {})
        response = self.class.get("/docs/#{doc_id}/sections", query: options)
        response.parsed_response['items']
      end

      def section(doc_id, section_id, options = {})
        self.class.get("/docs/#{doc_id}/sections/#{section_id}", query: options)
      end
    end
  end
end
