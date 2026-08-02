cask "clicker" do
  version "1.0"
  sha256 "3619a322625e85fd110bf5f0236bd25d91616650510646ad698d58bd215a83fd"

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

  caveats <<~EOS
    Clicker uses pyatv to talk to Apple TVs. Install it with:
      brew install pipx && pipx install pyatv
  EOS

  zap trash: [
    "~/Library/Application Support/Clicker",
    "~/Library/Preferences/info.backpocket.clicker.plist",
  ]
end
