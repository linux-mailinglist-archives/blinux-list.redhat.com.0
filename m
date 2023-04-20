Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4E06E9CE4
	for <lists+blinux-list@lfdr.de>; Thu, 20 Apr 2023 22:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682021572;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FW2ld7KRC7FJYoZCT80uqZihRIo5gUaF3q7fYi4paKc=;
	b=h4Y8eJxBad9DBCLOyyuoOCCmVABzTMtL53Ifj23FCujXJkCmBpwxfppLrlk9GB98YvJrqc
	5WVVp/8PnCAVgfy5spb+lxSOQ3B/hO97CGL+GH3zRR5bOfFDl0LVFpxyCZ4er42Xi2AREl
	odL5/Qv8gETH8JrEFZ/zoOSyZ3mnscM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-534-UPma1D3WOkWj-ULpmhrYPQ-1; Thu, 20 Apr 2023 16:12:47 -0400
X-MC-Unique: UPma1D3WOkWj-ULpmhrYPQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DB89185A790;
	Thu, 20 Apr 2023 20:12:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2E3554014E81;
	Thu, 20 Apr 2023 20:12:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3F56A1946A4A;
	Thu, 20 Apr 2023 20:12:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: My new Desktop
In-reply-to: <mailman.1988.1681426095.2632800.blinux-list@redhat.com>
References: <mailman.1841.1681419307.2632801.blinux-list@redhat.com>
 <mailman.2007.1681419804.2632806.blinux-list@redhat.com>
 <mailman.1988.1681426095.2632800.blinux-list@redhat.com>
Comments: In-reply-to Linux for blind general discussion
 <blinux-list@redhat.com>
 message dated "Thu, 13 Apr 2023 18:48:09 -0400."
MIME-Version: 1.0
Date: Thu, 20 Apr 2023 15:12:15 -0500
Message-ID: <mailman.2113.1682021544.283955.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <9538.1682021534.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is a long message about sound problems so please move on if
you are also lost.

Not wanting to hijack someone else's thread but on a similar
topic, I started a new thread.

	I bought a HP desktop with SSD and 16GB of RAM a year ago
last March and I love it with one exception and I'll give you 3
guesses as to what doesn't yet work right.  If you think audio,
you get a free supply of air for the rest of your life.

	This system is a 64-bit Rizen device with all the modern
bells and whistles and even still has a Piezo buzzer on the
mother board which one can hear when grub begins booting the
kernel and, if you use an ISO image, the debian11 or bullseye
image beeps, you type s then return and it does start talking
although speakup may have a bit of COPD, possibly a hint of black
lung disease but it is not too bad.

	I put the ISO image on to a  3.8 gb thumb drive with

sudo dd if=debian-11.3.0-amd64-netinst.iso of=/dev/yourdrive

	I had also hoped to have lights-out remote management
using ipmitool from maybe a raspberry Pi since this particular
rison box has that capability but ran in to another one of those
brick walls in that apparently HP uses a proprietary version of
the good stuff so it's get sighted help once again to fix all the
stuff that is wrong before one can begin doing the good things .

	There is a BIOS setting that one can set that turns off
secureboot or one is stuck with Windows only.

	Yes, when it comes to accessibility fixes plus unix
fixes, those oft-spoken words which start "Oh.  I wish" or "if
only," rule.

	After all that unnecessary dificulty, the system is now
ready to rock and it does.

	Now, for the sound which unfortunately seems to be a
right of passage for a year-old system and a cutting-edge version
of Linux.

	This system has an on-board sound card  plus a hdmi
output which is also one of the sound device sets.  I have one of
those hdmi-to-RCA jack converters which gives you a Red, White
and Yellow jack set.  White is the left stereo channel.  Red is
right and yellow is composit video which will drive old-school
composit video systems such as monitors and anything else that
receives analog video.

	The one I have is several years old now so I don't know
what is available right now but they are not expensive, less than
$100 and nice to have around.

	I do get audio from the hdmi jack.

	What I don't get is audio from the built-in sound card.
I think I have gotten it maybe once or twice in the last year but
all you have to do to lose that audio is unplug headphones if you
were listening through them and the sound goes away which is it's
normal state of being so far.  The jack sense algorithms don't do
squat so you can plug in speakers or headphones and all that
happens is that your audio just dies, speakup and all.

	One plugs in to speaker outputs or headphone outputs and
hears the sounds of silence and not the Simon and Garfuncle
voices singing that song.

	What I did most of this last year was to plug a usb sound
card in and also to put
snd_usb_audio
as the very first line in the /etc/modules directory that gets
loaded on boot.  I also put
snd_hda_codec_realtek
snd_hda_codec_generic

in case that might pursuade the on-board card to come alive but
that's too easy.  I know. I'm a spoiled 71-year-old brat who
wants stuff to work eventually.

	I didn't exactly buy an on-board audio system to
uselessly burn electricity of may be a watt or two every thousand
hours as a charitable donation to my municipal power utility.

	Just having a bit of fun because that is the only real
part of this system that is not standing up and being counted.

	I have been able to use orca and firefox plus the mate
terminal through the usb audio cards I have plugged in.  I have
tried a very cheap usb sound card that someone gave me which
works wonderfully plus some more expensive sound cards that also
do perfectly well when plugged in to any usb port.

	When I am getting sound via hdmi or usb, orca talks along
with mplayer and any sox command-line programs I want to run so
it's all there when the sound interface card works.

	This system came with Windows10 installed on the SSD but
I blew it away since I wanted Linux and Microsoft gives you that
for free any more.

	This system also neaded one to download a realtec network
driver card before the wireless adaptor would work but when it
did, I got on our WiFi network as well as via the wired ether net
port so that part is fine.

	What else I have done so far is to reboot with the ISO
installation  image on thumb drive and then envoke another
console after getting to the part where one would partition a
disk.

	I mounted a thumbdrive on /mnt and ran dmesg
>/mnt/cdrom_msg

	Here is a bit of what that produced.  First, the very top
lines.

[    0.000000] Linux version 5.10.0-13-amd64 (debian-kernel@lists.debian.org) (gcc-10 (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2) #1 SMP Debian 5.10.106-1 (2022-03-17)
[    0.000000] Command line: BOOT_IMAGE=/install.amd/vmlinuz vga=788 speakup.synth=soft --- quiet

	The dmesg file is already 900 plus lines long so here's
what dmesg shows on a normally-booted system right now when the
sound device should form:

[    3.023719] Generic FE-GE Realtek PHY r8169-0-100:00: attached PHY driver [Generic FE-GE Realtek PHY] (mii_bus:phy_addr=r8169-0-100:00, irq=IGNORE)
[    3.031012] snd_hda_intel 0000:00:1f.3: enabling device (0100 -> 0102)
[    3.031344] snd_hda_intel 0000:00:1f.3: bound 0000:00:02.0 (ops i915_audio_component_bind_ops [i915])
[    3.142383] snd_hda_codec_realtek hdaudioC0D0: autoconfig for ALC671: line_outs=1 (0x14/0x0/0x0/0x0/0x0) type:line
[    3.142385] snd_hda_codec_realtek hdaudioC0D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[    3.142386] snd_hda_codec_realtek hdaudioC0D0:    hp_outs=1 (0x21/0x0/0x0/0x0/0x0)
[    3.142386] snd_hda_codec_realtek hdaudioC0D0:    mono: mono_out=0x0
[    3.142387] snd_hda_codec_realtek hdaudioC0D0:    inputs:
[    3.142387] snd_hda_codec_realtek hdaudioC0D0:      Front Mic=0x19
[    3.142388] snd_hda_codec_realtek hdaudioC0D0:      Rear Mic=0x18
[    3.142388] snd_hda_codec_realtek hdaudioC0D0:      Line=0x1b

	At that point, it seems done with the sound and moves on
to other things.

	aplay -l yields the following:

**** List of PLAYBACK Hardware Devices ****
card 0: PCH [HDA Intel PCH], device 0: ALC671 Analog [ALC671 Analog]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 3: HDMI 0 [HDMI 0]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 7: HDMI 1 [HDMI 1]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 8: HDMI 2 [HDMI 2]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 9: HDMI 3 [HDMI 3]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 10: HDMI 4 [HDMI 4]
  Subdevices: 1/1
  Subdevice #0: subdevice #0

	As I said, the hdmi audio appears to work as little as I
have actually used it because what I want are the inputs and
outputs for the normal audio interface:

amixer for card 0 from user martin gives:
Simple mixer control 'Master',0
  Capabilities: pvolume pswitch pswitch-joined
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 65536
  Mono:
  Front Left: Playback 65536 [100%] [on]
  Front Right: Playback 65536 [100%] [on]
Simple mixer control 'Capture',0
  Capabilities: cvolume cswitch cswitch-joined
  Capture channels: Front Left - Front Right
  Limits: Capture 0 - 65536
  Front Left: Capture 65536 [100%] [on]
  Front Right: Capture 65536 [100%] [on]

	Usually, seeing 65536 is the audio system's way of saying
"I'm hopelessly lost and just faking it.  You'll get nada when
trying to do anything useful.

Trying amixer as the root user gives:

Simple mixer control 'Master',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Mono
  Limits: Playback 0 - 87
  Mono: Playback 44 [51%] [-32.25dB] [on]
Simple mixer control 'Headphone',0
  Capabilities: pswitch
  Playback channels: Front Left - Front Right
  Mono:
  Front Left: Playback [off]
  Front Right: Playback [off]
Simple mixer control 'Headphone+LO',0
  Capabilities: pvolume
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 87
  Mono:
  Front Left: Playback 87 [100%] [0.00dB]
  Front Right: Playback 71 [82%] [-12.00dB]
Simple mixer control 'PCM',0
  Capabilities: pvolume
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 255
  Mono:
  Front Left: Playback 255 [100%] [0.00dB]
  Front Right: Playback 254 [100%] [-0.20dB]
Simple mixer control 'Front',0
  Capabilities: pswitch
  Playback channels: Front Left - Front Right
  Mono:
  Front Left: Playback [on]
  Front Right: Playback [on]
Simple mixer control 'Front Mic',0
  Capabilities: pvolume pswitch
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 31
  Mono:
  Front Left: Playback 28 [90%] [7.50dB] [on]
  Front Right: Playback 28 [90%] [7.50dB] [on]
Simple mixer control 'Front Mic Boost',0
  Capabilities: volume
  Playback channels: Front Left - Front Right
  Capture channels: Front Left - Front Right
  Limits: 0 - 3
  Front Left: 0 [0%] [0.00dB]
  Front Right: 0 [0%] [0.00dB]
Simple mixer control 'Surround',0
  Capabilities: pvolume pswitch
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 87
  Mono:
  Front Left: Playback 0 [0%] [-65.25dB] [off]
  Front Right: Playback 0 [0%] [-65.25dB] [off]
Simple mixer control 'Center',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Mono
  Limits: Playback 0 - 87
  Mono: Playback 0 [0%] [-65.25dB] [off]
Simple mixer control 'LFE',0
  Capabilities: pvolume pvolume-joined pswitch pswitch-joined
  Playback channels: Mono
  Limits: Playback 0 - 87
  Mono: Playback 0 [0%] [-65.25dB] [off]
Simple mixer control 'Line',0
  Capabilities: pvolume pswitch
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 31
  Mono:
  Front Left: Playback 31 [100%] [12.00dB] [on]
  Front Right: Playback 31 [100%] [12.00dB] [on]
Simple mixer control 'Line Boost',0
  Capabilities: volume
  Playback channels: Front Left - Front Right
  Capture channels: Front Left - Front Right
  Limits: 0 - 3
  Front Left: 0 [0%] [0.00dB]
  Front Right: 0 [0%] [0.00dB]
Simple mixer control 'IEC958',0
  Capabilities: pswitch pswitch-joined
  Playback channels: Mono
  Mono: Playback [on]
Simple mixer control 'IEC958',1
  Capabilities: pswitch pswitch-joined
  Playback channels: Mono
  Mono: Playback [on]
Simple mixer control 'IEC958',2
  Capabilities: pswitch pswitch-joined
  Playback channels: Mono
  Mono: Playback [on]
Simple mixer control 'IEC958',3
  Capabilities: pswitch pswitch-joined
  Playback channels: Mono
  Mono: Playback [on]
Simple mixer control 'IEC958',4
  Capabilities: pswitch pswitch-joined
  Playback channels: Mono
  Mono: Playback [on]
Simple mixer control 'Capture',0
  Capabilities: cvolume cswitch
  Capture channels: Front Left - Front Right
  Limits: Capture 0 - 31
  Front Left: Capture 31 [100%] [30.00dB] [off]
  Front Right: Capture 31 [100%] [30.00dB] [off]
Simple mixer control 'Capture',1
  Capabilities: cvolume cswitch
  Capture channels: Front Left - Front Right
  Limits: Capture 0 - 31
  Front Left: Capture 0 [0%] [-16.50dB] [off]
  Front Right: Capture 0 [0%] [-16.50dB] [off]
Simple mixer control 'Auto-Mute Mode',0
  Capabilities: enum
  Items: 'Disabled' 'Enabled'
  Item0: 'Enabled'
Simple mixer control 'Channel Mode',0
  Capabilities: enum
  Items: '2ch' '4ch' '6ch'
  Item0: '2ch'
Simple mixer control 'Input Source',0
  Capabilities: cenum
  Items: 'Front Mic' 'Rear Mic' 'Line'
  Item0: 'Rear Mic'
Simple mixer control 'Input Source',1
  Capabilities: cenum
  Items: 'Front Mic' 'Rear Mic' 'Line'
  Item0: 'Front Mic'
Simple mixer control 'Loopback Mixing',0
  Capabilities: enum
  Items: 'Disabled' 'Enabled'
  Item0: 'Disabled'
Simple mixer control 'Rear Mic',0
  Capabilities: pvolume pswitch
  Playback channels: Front Left - Front Right
  Limits: Playback 0 - 31
  Mono:
  Front Left: Playback 28 [90%] [7.50dB] [on]
  Front Right: Playback 28 [90%] [7.50dB] [on]
Simple mixer control 'Rear Mic Boost',0
  Capabilities: volume
  Playback channels: Front Left - Front Right
  Capture channels: Front Left - Front Right
  Limits: 0 - 3
  Front Left: 0 [0%] [0.00dB]
  Front Right: 0 [0%] [0.00dB]

	That looks like something useful even with a lot of it
shut off.  funny, I can only access that as root but see this:

1m martin ~ $ groups
martin adm dialout cdrom floppy audio dip video plugdev netdev bluetooth lpadmin pulse scanner wireshark

That puts me in a group that should see the same settings.

	The on-line posts I have read about HP sound says that
somebody tried to fix the module that should load with this sound
card and it's not fixed yet.

	Does anybody know of a fix yet?

	Thanks.

Martin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

