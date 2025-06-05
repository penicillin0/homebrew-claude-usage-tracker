cask "claude-usage-tracker" do
  version "0.0.7"
  
  if Hardware::CPU.intel?
    sha256 "cbb969c96e0bf6cf90e3b759ef6eb2bb132dd463d10c9e2a60e36ebb57495978"
    url "https://github.com/penicillin0/claude-usage-tracker-for-mac/releases/download/v#{version}/Claude.Usage.Tracker-#{version}.dmg"
  else
    sha256 "a88683056941ae84f744f279afe6648a37c8035c6134f8eeb1976eaf783f5a73"
    url "https://github.com/penicillin0/claude-usage-tracker-for-mac/releases/download/v#{version}/Claude.Usage.Tracker-#{version}-arm64.dmg"
  end

  name "Claude Usage Tracker"
  desc "Menu bar app to visualize Claude Code usage and costs"
  homepage "https://github.com/penicillin0/claude-usage-tracker-for-mac"

  depends_on macos: ">= :high_sierra"

  app "Claude Usage Tracker.app"

  zap trash: [
    "~/Library/Application Support/Claude Usage Tracker",
    "~/Library/Preferences/com.penicillin0.claude-usage-tracker.plist",
  ]
end