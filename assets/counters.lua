local utils = require 'pandoc.utils'

local example_counter = 0
local excersice_counter = 0

function Code (code)
  if utils.stringify(code) == 'example_Counter' then
    example_counter = example_counter + 1
    return pandoc.Str(string.format('%s', example_counter))
  end
  
  if utils.stringify(code) == 'example_CounterCall' then
    return pandoc.Str(string.format('%s', example_counter))
  end

  if utils.stringify(code) == 'example_Set' then
    example_counter = 1
    return pandoc.Str(string.format('%s', example_counter))
  end

  if utils.stringify(code) == 'excersice_Counter' then
    excersice_counter = excersice_counter + 1
    return pandoc.Str(string.format('%s', excersice_counter))
  end

  if utils.stringify(code) == 'excersice_CounterCall' then
    return pandoc.Str(string.format('%s', excersice_counter))
  end

  if utils.stringify(code) == 'excersice_Set' then
    excersice_counter = 1
    return pandoc.Str(string.format('%s', excersice_counter))
  end  
end