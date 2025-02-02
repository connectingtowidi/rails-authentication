class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # database_... - check if user exists in the database.
  # registerable - check if a user can register
  # might not be able to register if
  # it's a closed off app (only by invite), or the app is still in production
  # recoverable - allow user to recover password if forgotten
  # rememberable - for browser to remember email + password
  # validatable - validation of, for example, password length

  # AS FOR THE REST? MUST ENABLE FIRST IN THE MIGRATION FILE
  # trackable - track when the last time the user signed in.
  # confirmable - user needs to confirm email before they can sign up
  # lockable - sign in is blocked after 3 attempts
  # timeoutable - after 30 minutes of no activity, user will be logged out
  # omniauthable - allow users to sign up using Facebook.. but need to install additional gems.
end
