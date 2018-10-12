require 'rails_helper'

RSpec.describe CommentUpdateJob, type: :job do
  #pending "add some examples to (or delete) #{__FILE__}"

  context "when the job has new comment" do
    @comment = FactoryBot.build(:comment)
    @current_user = FactoryBot.build(:user)

    it 'job is created' do
      ActiveJob::Base.queue_adapter = :test
      expect {
        CommentUpdateJob.perform_now(@comment, @current_user)
      }.to have_enqueued_job.on_queue('jobs')
    end
  end
end
