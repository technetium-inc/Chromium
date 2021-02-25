function file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
  end

function lines_from(file)
  if not file_exists(file) then return {} end
  lines = {}
  for line in io.lines(file) do
      lines[#lines + 1] = line
  end
  return lines
end

function read()
    local file = arg[1]
    local lines = lines_from(file)
    local res = {}

    for k,v in pairs(lines) do
        k = nil
        res[#res + 1] = v
    end
    return res
end

function lex()
end