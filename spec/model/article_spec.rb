describe Article do
  context 'create assigns' do
    subject { described_class.create }
    its(:rate) { should_not eq(nil) }
  end
end
