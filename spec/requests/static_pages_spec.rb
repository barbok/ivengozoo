# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Зоосалон Айвенго'" do
      visit root_path
      expect(page).to have_content('Зоосалон Айвенго')
    end

    it "should have the right title" do
      visit root_path
      expect(page).to have_title("Зоосалон Айвенго")
    end

    it "should have the right title" do
      visit root_path
      expect(page).to have_title(" | Главная")
    end
  end
end
