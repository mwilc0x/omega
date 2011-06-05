require 'spec_helper'

describe "users/new.html.haml" do
  before(:each) do
    assign(:user, stub_model(User,
      :first_name => "MyText",
      :last_name => "MyText"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "textarea#user_first_name", :name => "user[first_name]"
      assert_select "textarea#user_last_name", :name => "user[last_name]"
    end
  end
end
