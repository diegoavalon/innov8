require 'rails_helper'

describe Participant do
	it { should validate_presence_of :fname }
end