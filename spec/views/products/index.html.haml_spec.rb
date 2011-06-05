require 'spec_helper'

describe "products/index.html.haml" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :id => 1,
        :name => "MyText"
      ),
      stub_model(Product,
        :id => 1,
        :name => "MyText"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
