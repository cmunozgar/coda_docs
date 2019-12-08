module CodaDocs
  module Entities
    class Formulas
      def formulas(doc_id, options = {})
        response = self.class.get("/docs/#{doc_id}/formulas", query: options)
        response.parsed_response['items']
      end

      def formula(doc_id, formula_id, options = {})
        self.class.get("/docs/#{doc_id}/formulas/#{formula_id}", query: options)
      end
    end
  end
end
