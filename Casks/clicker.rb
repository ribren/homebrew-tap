cask "clicker" do
  version "1.2.1"
  sha256 "dd1ddad75d04b8edfcbdfd622363918c83cbfe640448882acd3ae6630cf134da"

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
