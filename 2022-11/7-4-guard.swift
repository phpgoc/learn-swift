func isIpAddress(ip: String) -> Bool {
  let components = ip.split(separator: ".")
  if components.count != 4 {
    return false
  }
  for component in components {
    if let number = Int(component) {
      if number < 0 || number > 255 {
        return false
      }
    } else {
      return false
    }
  }
  return true
}

func isIPAddressUseGuard(ip: String) -> (Bool, String) {
  let components = ip.split(separator: ".")
  guard components.count == 4 else {
    return (false, "Invalid IP address")
  }

  for (i, component) in components.enumerated() {
    guard let number = Int(component) else {
      return (false, "\(i+1) component is not a number")
    }

    guard number >= 0 && number <= 255 else {
      return (false, "\(i+1) component is not in range 0-255")
    }
  }
  return (true, "Valid IP address")
}
print(isIpAddress(ip: "1.2.3.4"))
print(isIpAddress(ip: "0.1.2.3"))
print(isIpAddress(ip: "255.555.222.222"))
print(isIpAddress(ip: "1.2.3"))

print(isIPAddressUseGuard(ip: "1.2.3.4"))
print(isIPAddressUseGuard(ip: "0.1.2.3"))
print(isIPAddressUseGuard(ip: "255.555.222.222"))
print(isIPAddressUseGuard(ip: "1.2.3"))
print(isIPAddressUseGuard(ip: "1.a.3.4"))
