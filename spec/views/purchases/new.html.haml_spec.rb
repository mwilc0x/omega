require 'spec_helper'

describe "purchases/new.html.haml" do
  before(:each) do
    assign(:purchase, stub_model(Purchase,
      :id => 1,
      :product_id => 1,
      :store_id => 1
    ).as_new_record)
  end

  it "renders new purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchases_path, :method => "post" do
      assert_select "input#purchase_id", :name => "purchase[id]"
      assert_select "input#purchase_product_id", :name => "purchase[product_id]"
      assert_select "input#purchase_store_id", :name => "purchase[store_id]"
    end
  end
end
