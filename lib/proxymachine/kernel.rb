module Kernel
  def proxy(&block)
    ProxyMachine.set_router(block)
  end

  def proxy_connect_error(&block)
    ProxyMachine.set_connect_error_callback(&block)
  end

  def proxy_inactivity_error(&block)
    ProxyMachine.set_inactivity_error_callback(&block)
  end
end