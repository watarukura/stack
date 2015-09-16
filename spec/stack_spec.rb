require 'spec_helper'
require 'stack'

describe 'Stack' do

  context 'スタックが空の場合' do
    subject { Stack.new }
    it "空だったらtrueを返す" do
      expect( subject ).to be_empty
    end
    it "サイズを聞かれたらゼロを返す" do
      expect( subject.size ).to eq 0
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
    it "サイズを返す_1" do
      expect( subject.size ).to eq 1
    end
  end
end
