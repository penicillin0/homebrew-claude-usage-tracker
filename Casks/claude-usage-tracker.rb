cask "claude-usage-tracker" do
  version "0.0.4"
  
  if Hardware::CPU.intel?
    sha256 "ca8c96e5d35ba43391df8b49dba1c3e01bcadf62118237d4563fed18497a6a94"
    url "https://github.com/penicillin0/claude-usage-tracker-for-mac/releases/download/v#{version}/Claude.Usage.Tracker-#{version}.dmg"
  else
    sha256 "9b6105965e14c3dea868fd21918965508256e07f02c097047bfae922359f9c2a"
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