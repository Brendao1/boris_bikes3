require 'docking_station'
describe DockingStation do
  it 'should respond to release_bike command' do
    expect(subject).to respond_to(:release_bike)
  end


  it 'should return a Bike when asked to release bike' do
    expect(subject.release_bike).to be_a Bike
  end

  it 'should return a working bike when asked to release bike' do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
end
