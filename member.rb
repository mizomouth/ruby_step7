class Member
  attr_reader :member_id,:user_name
  def initialize(member_id,user_name)
    @member_id = member_id
    @user_name = user_name
  end
end
