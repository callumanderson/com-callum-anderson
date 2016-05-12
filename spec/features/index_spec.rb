require 'rails_helper'

RSpec.describe 'The Welcome page', type: :feature do
  it 'should tell the visitor a little about the business' do
    visit 'http://example.com'
    expect(page).to have_content 'Callum Anderson'
  end
end
