require 'rails_helper'

describe Participant do
	it { should validate_presence_of :fname }
	it { should validate_presence_of :lname }
	it { should normalize_attribute(:fname) }
  it { should normalize_attribute(:lname).from('  joHnSon  ').to('joHnSon') }
  # it { should normalize_attribute(:summary).from('   Here is my summary that is a little to long   ').to('Here is m...') }
  # it { should normalize_attribute(:title).from(' pick up chicks with magic tricks  ').to('Pick Up Chicks With Magic Tricks') }
  # it { should normalize_attribute(:slug).from(' Social Life at the Edge of Chaos    ').to('social-life-at-the-edge-of-chaos') }
  # it { should normalize_attribute(:limited_slug).from(' Social Life at the Edge of Chaos    ').to('social-life') }
end