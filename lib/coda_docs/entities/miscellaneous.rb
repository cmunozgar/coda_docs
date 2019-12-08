module CodaDocs
  module Entities
    class Miscellaneous
      def resolve_browser_link(url, degrade_gracefully = true)
        self.class.get('/resolveBrowserLink', query: { url: url, degradeGracefully: degrade_gracefully })
      end
    end
  end
end
