require 'spec_helper'

describe Privatepost do
    subject { @privatepost }
    
    it { should respond_to(:content) }
    it { should respond_to(:user_id) }
    it { should respond_to(:touser_name) }
end
