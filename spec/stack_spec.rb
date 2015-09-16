require 'spec_helper'
require 'stack'

describe 'Stack' do

  context 'スタックが空の場合' do
    subject { Stack.new }
    it "空だったらtrueを返す" do
      expect( subject ).to be_empty
    end
  end

  context 'スタックが空以外の場合' do
    subject {
      stack = Stack.new
      stack.push(10)
      stack
    }
    it "空でなかったらfalseを返す" do
      expect( subject ).not_to be_empty
    end
  end
end
