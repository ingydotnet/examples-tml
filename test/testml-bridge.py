from testml.bridge import TestMLBridge as Base

class TestMLBridge(Base):
  def divide_then_multiply(self, x, y):
    return ((float(x) / y) * y)
