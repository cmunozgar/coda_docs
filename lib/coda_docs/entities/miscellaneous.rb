module CodaDocs
  module Entities
    class Miscellaneous < Entity
      def resolve_browser_link(url, degrade_gracefully = true)
        connection.get('/resolveBrowserLink', query: { url: url, degradeGracefully: degrade_gracefully })
      end
    end
  end
end
