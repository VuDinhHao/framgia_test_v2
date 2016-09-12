class Admin::ExamsController < ApplicationController
  layout "admin"

  def index
    @exams = Exam.all
  end
end

