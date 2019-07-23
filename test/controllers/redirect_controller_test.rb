require 'test_helper'

class RedirectControllerTest < ActionDispatch::IntegrationTest
  setup do
    @url = urls(:one)
  end

  test "should get redirect" do
    get '/r/' + @url.code
    assert_redirected_to @url.url
  end

  test "should increment the number of hits" do
    assert_difference('@url.hits.count', 1) do
      get '/r/' + @url.code
    end
  end

  test "should get a 404" do
    get '/r/foo'
    assert_response :missing
  end
end
