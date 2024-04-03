require "zeitwerk"
require "avo"
require "avo/money_field/version"
require "avo/money_field/railtie"

loader = Zeitwerk::Loader.for_gem_extension(Avo)
loader.setup

module Avo
  module MoneyField
    # Your code goes here...
  end
end

# loader.eager_load
