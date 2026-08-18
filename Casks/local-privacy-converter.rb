cask "local-privacy-converter" do
  version "1.3.0"

  on_arm do
    sha256 "bc9aff2ebd577ebc552b3acd4e187ee636820729db49b12fb1754c35bc8116a5"
    url "https://github.com/Sergeant61/local-privacy-converter/releases/download/v#{version}/Local.Privacy.Converter-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "8a4313b49a427e1d624d0569271c650a39ee62a20e24e46e729ef7aa61c43962"
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
