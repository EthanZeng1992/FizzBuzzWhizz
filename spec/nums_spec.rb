require 'spec_helper'
 
describe 'FizzBuzzWhizz' do
  describe 'test input' do 
    it "should match the format '[1-9], [1-9], [1-9]'" do
      nums1 = '1,2,3'
      nums2 = '12,2,3'
      nums3 = '1 2 3'
      nums4 = '1, 2, 3'
      expect(Nums.is_valid?(nums1)).to be_truthy 
      expect(Nums.is_valid?(nums2)).to be_falsey
      expect(Nums.is_valid?(nums3)).to be_falsey
      expect(Nums.is_valid?(nums4)).to be_falsey
    end

    it "should not include '0'" do
      nums = '0,2,3'
      expect(Nums.is_valid?(nums)).to be_falsey
    end

    it "should not include the same number" do
      nums = '2,2,3'
      expect(Nums.is_valid?(nums)).to be_falsey
    end
  end

  describe 'test is_times' do
    it "if i%n eq 0, should return corresponding string" do
      i = 10
      n = 2
      s = 'Fizz'
      expect(Nums.is_times(i, n, s)).to eq(s)
    end

    it "if i%n not eq 0, should return blank" do
      i = 10
      n = 9
      s = 'Fizz'
      expect(Nums.is_times(i, n, s)).to eq('')
    end
  end
end
