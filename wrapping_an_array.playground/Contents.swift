//: Playground - noun: a place where sam can play

import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
//: # wrapping_an_array
// assume we have a list of tracks
let tracks = ["a", "b", "c", "d", "e"]

// algorithm should return this playlist if we select track "d"
let selectedTrack = "d"
["d", "e", "a", "b", "c"]
//:------------------------------------------------------------------------
// now retrieve the index of it
let selectedIndex = tracks.index(of: selectedTrack)!

var playlist = [String]()
for i in 0...tracks.count-1{
    // with that index we're able to add that ontop of the looping index
    // placing a mod on that index to wrap it and append that to the playlist
    let index = (i + selectedIndex) % tracks.count
    playlist.append(tracks[index])
}

// tada 🙌 🙌 🙌
playlist
playlist.removeAll()
//:------------------------------------------------------------------------
var priorTracks = [String]()

for track in tracks {
    if track == selectedTrack || playlist.count > 0 {
        //get's 'd' because it's the selected track
        //append's 'e' because once d is added the count is finally > 0
        //captures 'd' and 'e'
        playlist.append(track)
    } else {
        //get's the rest because it doesn't fit the conditional statement
        //captures 'a', 'b', and 'c'
        priorTracks.append(track)
    }
}

//separated arrays
priorTracks
playlist

//two shall become one
// tada 🙌 🙌 🙌
playlist += priorTracks
playlist.removeAll()
//:------------------------------------------------------------------------
let prefixArray = tracks.prefix(upTo: selectedIndex)
let suffixArray = tracks.suffix(from: selectedIndex)

// tada 🙌 🙌 🙌
playlist = Array(suffixArray + prefixArray) as [String]
playlist.removeAll()
//:------------------------------------------------------------------------
