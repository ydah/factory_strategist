# frozen_string_literal: true

require "rspec"
require "factory_bot"
module FactoryStrategist
  # Settings to see which method is best
  module Configure
    RSpec.configure do |config|
      config.around(:example) do |ex|
        detect_optimal_strategy_at(ex)
      end
    end
  end
end

private

def detect_optimal_strategy_at(example)
  return unless run_successfully?(example) # when spec fails with create, no-op

  FactoryBot::Syntax::Methods.alias_method :create, :build
  if run_successfully?(example)
    FactoryBot::Syntax::Methods.alias_method :create, :build_stubbed

    if run_successfully?(example)
      p "#{example.location} create can be replaced to build_stubbed"
    else
      p "#{example.location} create can be replaced to build"
    end
  else
    FactoryBot::Syntax::Methods.alias_method :create, :build_stubbed
    if run_successfully?(example)
      p "#{example.location} create can be replaced to build_stubbed"
    end
  end
end

def run_successfully?(example)
  example.run
  !example.exception
end
