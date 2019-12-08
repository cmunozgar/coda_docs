module CodaDocs
  module Entities
    class Folders
      def folders(doc_id, options = {})
        response = self.class.get("/docs/#{doc_id}/folders", query: options)
        response.parsed_response['items']
      end

      def folder(doc_id, folder_id, options = {})
        self.class.get("/docs/#{doc_id}/folders/#{folder_id}", query: options)
      end
    end
  end
end
