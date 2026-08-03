cask "openmv7" do
  version "0.1.0"
  sha256 "3b82bf1b58893524f03a366d5f466e00d3fbcbeef87ed2dd0e4117bbbccb66c1"

  url "https://github.com/vladikk/openmv7/releases/download/v#{version}/OpenMV7-#{version}.dmg"
  name "OpenMV7"
  desc "Menu-bar control app for the Shure MV7 microphone"
  homepage "https://github.com/vladikk/openmv7"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "OpenMV7.app"

  zap trash: [
    "~/Library/Application Support/OpenMV7",
    "~/Library/Preferences/com.vladikk.OpenMV7.plist",
  ]
end
