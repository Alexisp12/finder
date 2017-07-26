pack= Packages.register
  name: 'voicecontrol'
  description: 'Commands to switch between Siri, Dragon..'

pack.commands
  '':
    spoken: ''
    grammarType: 'individual'
    description: ''
    action: ->
      @do 'dragon_darwin:microphone-sleep'
      @applescript """
      tell application "Finder"
        activate
        open application file "Siri" of folder "Applications" of startup disk
      end tell
      """, false

Settings.vocabulary =
vocabulary: [
  ""
  ""
]

Settings.vocabulary =
 vocabularyAlternate:
  " ": ""
