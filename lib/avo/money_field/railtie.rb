module Avo
  module MoneyField
    class Railtie < Rails::Railtie
      initializer "avo-money_field.init" do
        Avo.plugin_manager.register Avo::MoneyField::Plugin
      end
    end
  end
end
