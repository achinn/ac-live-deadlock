class DeadlockController < ApplicationController
  include ActionController::Live

  def deadlock
    response.headers['Content-Type'] = 'text/event-stream'
    sse = SSE.new(response.stream)

    sse.write("a")
    sleep 1
    Test
  rescue ClientDisconnected
    puts 'Client disconnected'
  ensure
    puts 'Closing SSE'
    sse.close
  end
end
