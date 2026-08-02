cask "clicker" do
  version "1.3"
  sha256 "f155a87875cbc3c337ca5cc8b67f4af100c2e88411714e9891f54393a538537f"

  url "https://github.com/ribren/clicker/releases/download/v#{version}/Clicker-macOS.zip"
  name "Clicker"
  desc "Menu-bar remote for Apple TV"
  homepage "https://github.com/ribren/clicker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Clicker.app"

  zap trash: [
    "~/Library/Application Support/Clicker",
    "~/Library/Preferences/info.backpocket.clicker.plist",
  ]
end
