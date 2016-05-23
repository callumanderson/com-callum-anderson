require 'rails_helper'

RSpec.describe 'The Welcome page', type: :feature do
  let(:host) { 'http://example.com' }

  it 'should tell the visitor a little about the business' do
    visit host
    expect(page).to have_content('Callum Anderson')
  end

  it 'should have a link to contact me' do
    visit host
    expect(page).to have_link("Get in touch", :href=>"mailto:me@callum-anderson.com")
  end

  it 'should have a link to see my work' do
    visit host
    expect(page).to have_link("See my work", :href=>"/work")
  end
end
