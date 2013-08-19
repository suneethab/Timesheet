require 'spec_helper'

describe "descriptions/index" do
  before(:each) do
    assign(:descriptions, [
      stub_model(Description,
        :status => "MyText",
        :user => nil
      ),
      stub_model(Description,
        :status => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of descriptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
