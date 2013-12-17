module Refinery
  module SearchablePages
    class Engine < Rails::Engine
      extend Refinery::Engine

      isolate_namespace Refinery::SearchablePages

      before_inclusion do
        Decorators.register! root
      end

      engine_name :refinery_searchable_pages

      config.after_initialize do
        Refinery.register_extension(Refinery::SearchablePages)
      end
    end
  end
end
