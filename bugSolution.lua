local function foo(a)
  if a == nil then
    return nil  -- Correctly handles nil input
  end
  if a.x == nil then
    return nil --Handles case where 'x' is missing
    -- Or you could return a default value: return 0 
  end
  return a.x + 1
end

local b = {x = 5}
print(foo(b))    -- Output: 6
local c = {}
print(foo(c))    -- Output: nil
print(foo(nil))   -- Output: nil