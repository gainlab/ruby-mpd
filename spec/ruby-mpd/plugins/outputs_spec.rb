require 'spec_helper'
require_relative '../../../lib/ruby-mpd'

RSpec.describe MPD::Plugins::Outputs do
  subject { MPD.new }

  describe "#outputs" do
    it "should send correct params" do
      expect(subject).to receive(:send_command).with(:outputs)
      subject.outputs
    end
  end

  describe "#enableoutput" do
    it "should send correct params" do
      expect(subject).to receive(:send_command).with(:enableoutput, 1)
      subject.enableoutput(1)
    end
  end

  describe "#disableoutput" do
    it "should send correct params" do
      expect(subject).to receive(:send_command).with(:disableoutput, 1)
      subject.disableoutput(1)
    end
  end

  describe "#toggleoutput" do
    it "should send correct params" do
      expect(subject).to receive(:send_command).with(:toggleoutput, 1)
      subject.toggleoutput(1)
    end
  end
end
