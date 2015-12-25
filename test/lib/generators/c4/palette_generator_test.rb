require 'test_helper'
require 'generators/palette/palette_generator'

module C4
  class PaletteGeneratorTest < Rails::Generators::TestCase
    tests PaletteGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
