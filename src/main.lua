-- Build the Chromium CPU. Hmm... I remember doing this somewhere...
chromium = {memory = {0, 0, 0}, memory_index = 1}
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
function parse(code)
    out = {}
    for s, r in pairs(code) do
        a = 1
        repeat
            out[a] = r:sub(a, a)
            a = a + 1
        until a > r:len(r)
    end
    return out
end

function exec(parsed)
    math.randomseed(os.time())
    for d, e in pairs(parsed) do
        if e == "." then
            io.write("\027[93m" .. chromium.memory[chromium.memory_index] .. "\027[0m")
        elseif e == "," then
            io.write("\027[93m" .. string.char(chromium.memory[chromium.memory_index]) .. "\027[0m")
        elseif e == "@" then
            os.exit()
        elseif e == "0" or e == "1" or e == "2" or e == "3" or e == "4" or e == "5" or e == "6" or e == "7" or e == "8" or e == "9" then
            chromium.memory[chromium.memory_index] = tonumber(e)
        elseif e == "?" then
            chromium.memory[chromium.memory_index] = math.random(0, 9)
        elseif e == "#" then
            chromium.memory[chromium.memory_index] = tonumber(io.read(1))
        elseif e == "$" then
            chromium.memory[chromium.memory_index] = chromium.memory[chromium.memory_index] + 10
        elseif e == "`" then
            chromium.memory[chromium.memory_index] = chromium.memory[chromium.memory_index] + 1
        elseif e == "\\" then
            chromium.memory[chromium.memory_index] = chromium.memory[chromium.memory_index] - 1
        elseif e == "|" then
            chromium.memory[chromium.memory_index] = chromium.memory[chromium.memory_index] - 10
        end
    end
end

function main()
    exec(parse(read()))
end

main()