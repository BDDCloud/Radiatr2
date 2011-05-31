class HudsonConnector
  def latest_build config
    full_data = { :healthReport => { :score => 10 }}
    data = { :fullDisplayName => 'Generated', :changeSet => { :items => [{:user => 'Bob'}]}, :building => true, :result => 'Fail'}
    { :job => data[:fullDisplayName], :project => config["project"], :health => full_data[:healthReport][:score],
      :committers => data[:changeSet][:items][0][:user], :building => data[:building], :status => data[:result]}
  end

  def connector; "Hudson"; end
end
