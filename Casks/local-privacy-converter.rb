cask "local-privacy-converter" do
  version "1.4.1"

  on_arm do
    sha256 "4ef202738896324dcf9fa7fe705265a3ac56ec62ccee0cacb75226459e40ea1c"
    url "https://github.com/Sergeant61/local-privacy-converter/releases/download/v#{version}/Local.Privacy.Converter-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "3631292db2b04a5050b9ec20c4d56dd27a5129de82d11b7aaea79cbf686b12d1"
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
