require_relative "fields/money_field"

module Avo
  module MoneyField
    class Plugin < Avo::Plugin
      class << self
        def boot
          Avo.plugin_manager.register_field :money, Avo::MoneyField::Fields::MoneyField
        end
      end
    end
  end
end
