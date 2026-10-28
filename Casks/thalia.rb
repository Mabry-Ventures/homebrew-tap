cask "thalia" do
  version "0.8.6"
  sha256 "0c1e54bc8d5acd00fa152d985fb13c4463a6654d3625894f8899d1a07dc1fb9a"

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
