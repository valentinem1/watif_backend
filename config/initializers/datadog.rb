require 'ddtrace'

Datadog.configure do |c|
    # This will activate auto-instrumentation for Rails
    c.use :rails, options

    c.use :rails, 
end