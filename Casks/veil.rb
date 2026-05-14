cask "veil" do
  version "0.4.0"
  sha256 "3ed25f88fd2928d058fbacfcf730fa0ad893b895f268feb781f9a9e33419441a"

  url "https://github.com/neocode24/Veil/releases/download/v#{version}/Veil-v#{version}.zip"
  name "Veil"
  desc "macOS menu bar app that softly blanks other monitors when fullscreen video is detected"
  homepage "https://github.com/neocode24/Veil"

  depends_on macos: ">= :sonoma"

  app "Veil.app"

  zap trash: [
    "~/Library/Preferences/com.neocode24.Veil.plist",
    "~/Library/Caches/com.neocode24.Veil",
  ]
end
