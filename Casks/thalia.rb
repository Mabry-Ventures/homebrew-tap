cask "thalia" do
  version "0.8.7"
  sha256 "69661beea8524fc5edb8ab4ac0ac752bc779155f2897f744f005f9e7af57c757"

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
