cask "pingky" do
  version "1.1"
  sha256 "ec38d31894f61f45307bfe044550492342016b28e9b71f1a64fd7f23e93626c9"

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
