class DelayedJobAdminController < Admin::AdminController

  layout 'delayed_job_admin'

  before_filter :delayed_job_admin_authentication

  def index
    @jobs = Delayed::Job.asc(:priority).asc(:run_at).limit(50)
    @count = Delayed::Job.count
  end

end
