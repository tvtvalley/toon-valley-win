# Window Settings
window-title Toon Valley
icon-filename phase_3/models/gui/toonvalley.ico
cursor-filename phase_3/models/gui/toonmono.cur

# Audio/Video
audio-library-name p3openal_audio
load-display pandagl
aux-display pandagl


depth-bits 24
audio-sfx-active #t
audio-music-active #t

# Models/Resources
model-path $MAIN_DIR/resources
default-model-extension .bam
vfs-case-sensitive 0
# Cache loaded models and textures on disk so zones load faster after the
# first visit.
model-cache-dir $USER_APPDATA/Toontown/cache
model-cache-textures #t
# Free unused transforms as soon as they're released, as Panda used to,
# instead of sweeping them up periodically. The periodic sweep in this Panda
# build can corrupt its transform table when a big scene is unloaded (one
# freed transform releasing others mid-sweep), which crashed the client after
# leaving the title screen's playground scenes.
garbage-collect-states 0

# Server Settings
server-version sv1.0.47.42
server-failover 80 443
tt-specific-login 1
# If true, individual TCP packets are not sent immediately, but rather they are collected together and accumulated to be sent periodically as one larger TCP packet.  This cuts down on overhead from the TCP/IP protocol, especially if many small packets need to be sent on the same connection, but it introduces additional latency (since packets must be held before they can be sent).
collect-tcp 1
# Send the collected packets every 50 ms instead of the default 200 ms, so
# movement and actions reach the server sooner.
collect-tcp-interval 0.05

# Developer Options
want-dev 0
schellgames-dev 0

# Holidays (Halloween, winter, Silly Saturdays...) start on their own by
# the calendar. Set to 0 for a normal, holiday-free Toontown; holidays then
# only run when staff start them with ~holiday start. In game, ~holiday
# stop all turns off the ones running now and ~holiday reset all brings
# them back.
want-holidays 1

# Picnic table games in Acorn Acres: Chinese Checkers, Checkers and
# Find Four, plus the standalone game tables.
want-chinese 1
want-checkers 1
want-findfour 1
want-game-tables 1

# Cog cheats: now and then a Cog sneaks in one extra attack outside its turn
# ("CHEATER!"). The server rolls the chance once per battle and allows one
# cheat per battle, for 25% of the Cog's normal attack damage, capped at 5% of
# the Toon's maximum Laff. See toontown/battle/CogCheatAI.py.
want-cog-cheat 1
cog-cheat-street 1
cog-cheat-building 1
cog-cheat-facility 1
cog-cheat-boss 1
cog-cheat-battle-chance 0.35
cog-cheat-max-per-battle 1
cog-cheat-damage-scale 0.25
cog-cheat-max-laff-scale 0.05

# DC Files
dc-file $MAIN_DIR/resources/etc/toon.dc
dc-file $MAIN_DIR/resources/etc/otp.dc

# HTTP/Downloading
verify-ssl 0
downloader-timeout-retries 4
downloader-byte-rate 125000
downloader-frequency 0.1
http-connect-timeout 20
http-timeout 30
extra-ssl-handshake-time 20.0
# Compute the SSL random seed early on.
early-random-seed 1

# Notify Settings
notify-level-collide warning
notify-level-chan warning
notify-level-gobj warning
notify-level-loader warning
notify-timestamp #t
notify-integrate #f
default-directnotify-level info
console-output 1

# Panda3D/DirectX
# Configure this true if you have a buggy graphics driver that doesn't correctly implement the third parameter, NumVertices, of DrawIndexedPrimitive().  In particular, the NVIDIA Quadro driver version 6.14.10.7184 seems to treat this as a maximum vertex index, rather than a delta between the maximum and minimum vertex index.  Turn this on if you are seeing stray triangles, or you are not seeing all of your triangles.  Enabling this should work around this bug, at the cost of some additional rendering overhead on the GPU. 
dx-broken-max-index 1
# Set this true to show ime texts on the chat panel and hide the IME default windows. This is a mechanism to work around DX8/9 interface.
ime-aware 1
# Set this true to hide ime windows.
ime-hide 1
# Use DirectX management of video memory
dx-management 1
# If this is true, more accurate but more expensive fog computations are performed.
dx-use-rangebased-fog #t
# Set this true to have all CollisionTraversers in the world respect the previous frame's transform (position) for a given object when determining motion for collision tests.
respect-prev-transform 1
# Specifies the maximum amount of time that should be consumed by a single call to Decompressor::run().
decompressor-step-time 0.5
# Specifies the maximum amount of time that should be consumed by a single call to Extractor::step().
extractor-step-time 0.5
# Fix for Panda3D 1.0.0
temp-hpr-fix 1
# Keep vertex data on the graphics card (vertex buffer objects). It was
# turned off to work around old drivers; modern ones are much faster with it.
vertex-buffers 1

# GUI Settings
direct-wtext 0
on-screen-debug-font ImpressBT.ttf

# Misc Settings
inactivity-timeout 180
# If require-window is true, it means that we should raise an exception if the window fails to open correctly.
require-window 0
# Limits the size of the buffer used.
patcher-buffer-size 512000
# required-login: auto, green, blue, playToken, DISLToken, gameServer.
required-login playToken
# Do we merge or isolate LOD's?
merge-lod-bundles 0
# Blend between an animation's frames instead of jumping from one to the
# next. Toon and Cog animations have about 24 frames a second, so without
# this they look choppy on any faster screen.
interpolate-frames 1
early-event-sphere 1
# This controls the default value of SmoothMover::get_accept_clock_skew().
accept-clock-skew 1
text-minfilter linear_mipmap_linear
gc-save-all 0
server-data-folder data

# TEMPORARY
skip-friend-quest true
skip-phone-quest true

game-version 2026.10.24-aa747b3d

engine-source 8b749d872601ce30e6cf5dff7c839dd5d44856b5

