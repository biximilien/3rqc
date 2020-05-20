require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      name: "MyString",
      email: "MyString",
      phone: "MyString"
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input[name=?]", "booking[name]"

      assert_select "input[name=?]", "booking[email]"

      assert_select "input[name=?]", "booking[phone]"
    end
  end
end
