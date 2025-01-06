module Administrate
  class CustomDashboard
    include Administrate

    class << self
      def resource_name(_opts)
        I18n.t("administrate.navigation.custom.#{named_resource.pluralize}")
        # named_resource.pluralize.titleize
      end

      def resource(resource_name)
        define_singleton_method(:named_resource) { resource_name }
      end
    end
  end
end
