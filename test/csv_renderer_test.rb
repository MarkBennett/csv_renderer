require 'test_helper'

class CsvRendererTest < ActiveSupport::TestCase
  test "csv mime type" do
    assert_equal :csv, Mime::CSV.to_sym
    assert_equal "text/csv", Mime::CSV.to_s
  end
end
