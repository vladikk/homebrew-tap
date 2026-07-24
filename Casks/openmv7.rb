cask "openmv7" do
  version "0.1.0"
  sha256 "6591a272001a906cd40c1d2c9f6691952061140ceb028dd3ba91861e1559f7d2"

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
