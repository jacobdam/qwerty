require 'spec_helper'

describe Menu do
  let!(:menu1) { create(:menu, :name => 'menu1') }

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
  
  describe '.[]' do
    it 'returns a menu with given name' do
      Menu['menu1'].should == menu1
    end
    it 'returns a menu with given name in symbol' do
      Menu[:menu1].should == menu1
    end
    it 'raises ActiveRecord::RecordNotFound if menu is not found' do
      expect { Menu['not_existing'] }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
