cask "local-privacy-converter" do
  version "1.1.0"

  on_arm do
    sha256 "b541d7c81b32f67af019f981342d217c8d5ead0f1edc68c7956987b726520cc2"
    url "https://github.com/Sergeant61/local-privacy-converter/releases/download/v#{version}/Local.Privacy.Converter-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "4bfe3238c9137a5896e33b6ff3a2f1afb936c308f1858a83077bd85f37f6e26b"
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
