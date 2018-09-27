require 'test_helper'

class PatientSummaryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get patient_summary_index_url
    assert_response :success
  end

end
