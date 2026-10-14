cask "thalia" do
  version "0.8.3"
  sha256 "f1483da2985dc40738d007d3d2677cea9d0bcfe96f95fd7423e7e31fc220643c"

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
