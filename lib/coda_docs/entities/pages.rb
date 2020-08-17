module CodaDocs
  module Entities
    class Pages < Entity
      def all(doc_id, options = nil)
        response = connection.get("/docs/#{doc_id}/pages", query: options)
        parse_response(response)
      end

      def find(doc_id:, page_id:)
        connection.get("/docs/#{doc_id}/pages/#{page_id}", query: options)
      end

      def update(doc_id:, page_id:, name:, subtitle:, icon_name:, image_url:)
        connection.put(
          "/docs/#{doc_id}/pages/#{page_id}",
          body: {
            name: name,
            subtitle: subtitle,
            iconName: icon_name,
            imageUrl: image_url
          }.to_json
        )
      end
    end
  end
end
