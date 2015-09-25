require 'typus/orm/active_record/instance_methods'
class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include Typus::Orm::ActiveRecord::InstanceMethods
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def locale
    ::I18n.locale
  end

  def role
    Typus.master_role
  end
end
