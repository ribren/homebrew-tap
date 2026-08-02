cask "pingky" do
  version "1.0"
  sha256 "fa22e1c97853e0aa204f2adb4518fa1ef9b9525d3f9f20fb8ee4c08c492a9f9f"

  url "https://github.com/ribren/pingky/releases/download/v#{version}/Pingky-macOS.zip"
  name "Pingky"
  desc "Menu-bar widget that pings once a second and paints a latency heatmap"
  homepage "https://github.com/ribren/pingky"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Pingky.app"

  zap trash: "~/Library/Preferences/com.ribren.pingky.plist"
end
