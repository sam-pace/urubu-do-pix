# frozen_string_literal: true

require "spec_helper"
require './app/model/user'

RSpec.describe User do
	context "with user" do
		let(:user) { User.new(name: 'Sam') }
		it { expect(user.name).to eq('Sam') }
	end
end