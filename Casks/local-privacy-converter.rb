cask "local-privacy-converter" do
  version "1.1.3"

  on_arm do
    sha256 "33fe9defda1564c4df06797c891286b6300655bbb17112597319b32484c58be1"
    url "https://github.com/Sergeant61/local-privacy-converter/releases/download/v#{version}/Local.Privacy.Converter-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "db0bfe8b7fc0900361faab134d6588721efe32fb0d16aedf8dc26de480c6c313"
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
