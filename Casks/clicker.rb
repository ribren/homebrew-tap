cask "clicker" do
  version "1.4.3"
  sha256 "d5377e4d49b8506ed97c8bb22da3a80bd36d6c3e1d7c3f5cc93df6e17fed90a5"

  url "https://github.com/ribren/clicker/releases/download/v#{version}/Clicker-macOS.zip"
  name "Clicker"
  desc "Menu-bar remote for Apple TV"
  homepage "https://github.com/ribren/clicker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Clicker.app"

  zap trash: [
    "~/Library/Application Support/Clicker",
    "~/Library/Preferences/info.backpocket.clicker.plist",
  ]
end
