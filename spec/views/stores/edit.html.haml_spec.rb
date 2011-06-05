require 'spec_helper'

describe "stores/edit.html.haml" do
  before(:each) do
    @store = assign(:store, stub_model(Store,
      :location => "MyText"
    ))
  end

  it "renders the edit store form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stores_path(@store), :method => "post" do
      assert_select "textarea#store_location", :name => "store[location]"
    end
  end
end
