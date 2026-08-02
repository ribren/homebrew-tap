cask "pingky" do
  version "1.2"
  sha256 "cfd8bf72b28c9f04e0b390964037209233f4c524772e869c271eb40ee5f08cd3"

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
