require 'spec_helper'

describe "stores/show.html.haml" do
  before(:each) do
    @store = assign(:store, stub_model(Store,
      :location => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
