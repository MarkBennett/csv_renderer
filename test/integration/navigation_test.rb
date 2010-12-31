require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  test 'csv request sends a csv as a file' do
    visit home_path
    click_link 'CSV'

    assert_equal 'binary', headers['Content-Transfer-Encoding']
    assert_equal 'text/csv', headers['Content-Type']
    assert_equal 'attachment; filename="filename.csv"', headers['Content-Disposition']
    assert_equal "Name,Age\nBob,20", page.body
  end

  protected

  def headers
    page.response_headers
  end
end
