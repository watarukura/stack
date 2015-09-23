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

  context 'スタックに一つ積んだ場合' do
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
    it "スタックの一番上を取得する" do
      expect( subject.top ).to eq 10
    end
  end

  context 'スタックを複数積んだ場合' do
    subject {
      stack = Stack.new
      stack.push(10)
      stack.push(11)
      stack.push(12)
      stack
    }
    it "スタックの一番上を取得する" do
      expect( subject.top ).to eq 12
    end
    it "スタックにプッシュするとサイズが増える" do
      expect{ subject.push(13) }.to change{ subject.size}.from(3).to(4)
    end
  end
  context 'スタックを複数積んだ場合' do
    subject {
      stack = Stack.new
      stack.push(10)
      stack.push(11)
      stack.push(12)
      stack
    }
    it "スタックからポップするとサイズが減る" do
      expect{ subject.pop() }.to change{ subject.size}.from(3).to(2)
    end
  end

end
