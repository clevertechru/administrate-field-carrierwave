require "administrate/field/base"
require "rails"

module Administrate
  module Field
    class Carrierwave < Administrate::Field::Base
      class Engine < ::Rails::Engine
      end

      def url
        data.url
      end

      def thumb
        data.url && data.try(:thumb) ? data.url(:thumb) : ''
      end
      def to_s
        data
      end
    end
  end
end

