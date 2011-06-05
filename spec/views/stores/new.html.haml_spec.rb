require 'spec_helper'

describe "stores/new.html.haml" do
  before(:each) do
    assign(:store, stub_model(Store,
      :location => "MyText"
    ).as_new_record)
  end

  it "renders new store form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stores_path, :method => "post" do
      assert_select "textarea#store_location", :name => "store[location]"
    end
  end
end
