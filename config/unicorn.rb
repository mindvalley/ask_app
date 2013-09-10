root = "/home/mvdev/apps/ask@mindvalley/current"
working_directory root
pid "#{root}/tmp/pids/unicorn1.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.blog1.sock"
worker_processes 2
timeout 30