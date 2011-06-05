require 'spec_helper'

describe "purchases/show.html.haml" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :id => 1,
      :product_id => 1,
      :store_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
