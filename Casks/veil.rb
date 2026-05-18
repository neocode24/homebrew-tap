cask "veil" do
  version "0.6.1"
  sha256 "fe0e7bcfec4d3ffe34c01647d9186d7f03d04529e313f8851f086c4cf80a3ec1"

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
