local function foo(a)
  if a == nil then
    return nil  -- Correctly handles nil input
  end
  -- Error: Attempt to index a nil value
  return a.x + 1  -- This line is causing the error if 'a' doesn't have an 'x' field
end

local b = {x = 5}
print(foo(b))    -- Output: 6
local c = {}
print(foo(c))    -- Output: attempt to index a nil value (error)
print(foo(nil))   -- Output: nil