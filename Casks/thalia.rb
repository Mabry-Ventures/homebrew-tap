cask "thalia" do
  version "0.8.4"
  sha256 "845246b12bb70e2f9c344ab17c72937eb74864a7f6c7085056bac7831b735b9e"

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
