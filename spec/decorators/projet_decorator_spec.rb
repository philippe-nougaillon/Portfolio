# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProjetDecorator do
  let(:projet) { Projet.new.extend ProjetDecorator }
  subject { projet }
  it { should be_a Projet }
end
