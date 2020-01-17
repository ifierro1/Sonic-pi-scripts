use_bpm 60

live_loop :heartbeat do
  loop do
    with_fx :lpf, cutoff: 90 do
      with_fx :reverb do
        sample :drum_bass_soft
        sleep 0.2
        sample :drum_bass_soft
        sleep 0.5
      end
    end
  end
end


live_loop :bassline do
  use_synth :hollow
  play :e2, sustain: 1, release: 1, cutoff: rrand(70, 130)
  sleep 1
end

live_loop :alt do
  use_synth :hollow
  play :g3
  sleep 1
end

live_loop :melody do
  use_synth :saw
  loop do
    play_pattern_timed(ring :c4, :e4, :g4, :b4, :c5), 0.18
    play_pattern_timed(ring :e4, :g4, :b4).reverse, 0.18
  end
end
