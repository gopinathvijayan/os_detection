local osDetection = {
  { ttl = 64, os = "Linux" },
  { ttl = 128, os = "Windows" },
  { ttl = 255, os = "Cisco" },
}

local function detectOS(ttl)
  for _, entry in ipairs(osDetection) do
    if ttl == entry.ttl then
      return entry.os
    end
  end
  return "Unknown"
end

local function main()
  local ttl = tonumber(arg[1])

  if ttl == nil then
    print("Usage: lua os_detection.lua <ttl>")
    return
  end

  local detectedOS = detectOS(ttl)
  print("Detected OS: " .. detectedOS)
end

main()
