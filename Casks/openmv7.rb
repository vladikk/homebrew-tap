cask "openmv7" do
  version "0.1.1"
  sha256 "803fe6ca36f88ebddb833ac8638b7c77fe655e0788a5da1c92364db17ad3de94"

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
