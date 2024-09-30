require_relative "fields/money_field"

module Avo
  module MoneyField
    class Railtie < Rails::Railtie
      initializer "avo-money_field.init" do
        ActiveSupport.on_load(:avo_boot) do
          Avo.plugin_manager.register_field :money, Avo::MoneyField::Fields::MoneyField
        end
      end
    end
  end
end
