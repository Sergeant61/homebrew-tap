cask "local-privacy-converter" do
  version "1.1.1"

  on_arm do
    sha256 "ff7f0e3a0ff242be162b51a681d66c5234f4515d54a2c8e6a7010e41caa756fb"
    url "https://github.com/Sergeant61/local-privacy-converter/releases/download/v#{version}/Local.Privacy.Converter-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "9198bd97579cf18880dfb21de4a4c03a53bcbffdd2412e7b18444c4223e2f896"
    url "https://github.com/Sergeant61/local-privacy-converter/releases/download/v#{version}/Local.Privacy.Converter-#{version}.dmg"
  end

  name "Local Privacy Converter"
  desc "Privacy-focused offline media converter"
  homepage "https://github.com/Sergeant61/local-privacy-converter"

  app "Local Privacy Converter.app"

  zap trash: [
    "~/Library/Application Support/Local Privacy Converter",
    "~/Library/Preferences/io.lpc.desktop.plist",
    "~/Library/Logs/Local Privacy Converter",
  ]
end
