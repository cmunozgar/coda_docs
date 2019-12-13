module CodaDocs
  module Entities
    class Sections < Entity
      def all(doc_id)
        response = connection.get("/docs/#{doc_id}/sections")
        parse_response(response)
      end

      def find(doc_id:, section_id:)
        connection.get("/docs/#{doc_id}/sections/#{section_id}")
      end
    end
  end
end
