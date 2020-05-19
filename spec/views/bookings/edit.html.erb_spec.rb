require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      name: "MyString",
      email: "MyString",
      phone: "MyString"
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input[name=?]", "booking[name]"

      assert_select "input[name=?]", "booking[email]"

      assert_select "input[name=?]", "booking[phone]"
    end
  end
end
