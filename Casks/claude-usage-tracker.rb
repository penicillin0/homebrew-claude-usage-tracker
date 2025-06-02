cask "claude-usage-tracker" do
  version "0.0.5"
  
  if Hardware::CPU.intel?
    sha256 "8ea697dca06ed969b9293b527cb5b72ff79fe3ec782ad730cb9e53f23ab77561"
    url "https://github.com/penicillin0/claude-usage-tracker-for-mac/releases/download/v#{version}/Claude.Usage.Tracker-#{version}.dmg"
  else
    sha256 "2cfbfbdba4601945f0c41cc0122bdf6cd0ba50b06dcd79aaa47fff5f31ebbce7"
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