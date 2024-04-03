module Avo
  module MoneyField
    module Fields
      class MoneyField < Avo::Fields::BaseField
        attr_reader :currencies
        attr_reader :currency_suffix

        def initialize(id, **args, &block)
          super(id, **args, &block)

          add_array_prop args, :currencies
          add_string_prop args, :currency_suffix, ::MoneyRails::Configuration.currency_column[:postfix]
        end

        def to_permitted_param
          [id.to_sym, currency_column.to_sym]
        end

        def fill_field(record, key, value, params)
          record.public_send(:"#{key}=", value)
          record.public_send(:"#{key}#{@currency_suffix}=", params[:"#{key}#{@currency_suffix}"])

          record
        end

        def currency
          value.send(:currency)
        end

        def currency_column
          "#{id}#{currency_suffix}"
        end
      end
    end
  end
end
