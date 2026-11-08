cask "thalia" do
  version "0.8.7.1"
  sha256 "391138b6ecf9ba5a17b6d2755991558672a6d2c369502a10a1fea4edf4c9fea0"

  url "https://usethalia.com/download/Thalia-#{version}.dmg"
  name "Thalia"
  desc "Plan, review and ship work with Muse Code"
  homepage "https://usethalia.com/"

  livecheck do
    url "https://usethalia.com/update/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:title)
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Thalia.app"

  zap trash: [
    "~/Library/Application Support/Thalia",
    "~/Library/Caches/com.mabryventures.thalia",
    "~/Library/HTTPStorages/com.mabryventures.thalia",
    "~/Library/Preferences/com.mabryventures.thalia.plist",
  ]
end
