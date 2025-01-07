Return-Path: <blinux-list+bncBCNLZ3P6ZIDRBI4P6S5QMGQE6XJMEXI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 64474A03CFC
	for <lists+blinux-list@lfdr.de>; Tue,  7 Jan 2025 11:53:26 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4679fc5c542sf247382551cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 07 Jan 2025 02:53:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736247205; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ex+THbAC/u4xuNb5nZR1//Z1XbVR2aZ6pVw2TOJx7S1RLzWffY7ooXHOT5q8PLZrBq
         Kwsjilub9RrajaAHggHpudPXOR6c7EGdIQnpsoFU4quVpNh+5pC+9sHw2j8E3WjT4guf
         o0QPF74U70lg2tosF0SZgedr0A09e2AtPeeWPXjwBVmx99qfPDYcU2srxR09iAY5r3yt
         sQk+dVdgqSjx949F18Ru03aIpHO02W8wGCNLCZt3Yzb1T1KmbDi4ibAgxmPARmPHBu5j
         UM/VdNhvVrcjvLHdmlUcSWgTkbepHY2vWxGKkdWIvIt74Gks5kv3K/vj3kqPwMBT+Q+6
         2fng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:delivered-to;
        bh=c7TMR98lgVplz2WW+ndshurUxnF2T7laMAdT4iM/zg0=;
        fh=nodvQOmnEsKx5u2S2rX8XEnqASyttqEK2IU8G8buiYo=;
        b=E50eDnK+qxWmdmLEYXkdu5rfCqIuUiKn5nzG8kR62DrnA4Vzd2ZgisDkiE3Z6JkeVs
         0J2c8UecBLlWIHeAtYDt1m7T+RyG9Z5CZ+Q9ribzgO7AU9W94aGNtY5hUyceRe10jZK8
         UJa1kAEihwx/B5nxlMoumfAGZWv2oJUASvSnKyXCuTtmZSXI0gih3GEcp0IXpojkS/0L
         HGHhMzKXjYx5A14nY8cIdKP33ig1tozl8g5mvv8QyZOFpkZaAdfiHj76P5n3TqRjlSpA
         nh+fuKW0ejocpz/SYYye3XRBKnphK25jT/ehWpB5gXw+XKr2dsCZ6BrHoTirEDzFJP6q
         ic5Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.170 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736247205; x=1736852005;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c7TMR98lgVplz2WW+ndshurUxnF2T7laMAdT4iM/zg0=;
        b=bURtj//ANLqaFFOqAEgH99SdrZUlFy9ER3+wQ5WoOdsHJyaxffBCv7rE6W5+c/yTW0
         WYAP9LlfKplo6CdHDdMllZbLeIuHCx1+/ohlsE1RtBiFLW5J/A0+25HZH6skpep1picv
         ZsQ8+Q75NkZwPDzjrzrFJuK6AEIAW3j9iK+KIgWpdGYWsXqGB3kBQF2YIFvlBmdLZFgu
         99h8IBp1vVS1XHXttlF3miY4SkQ+VuEs+qNRd525iC5FW0Ss3hRiIVzTHSEKMvfhNI7l
         jjU63CGCi4I7z+uow86XzZ/UOulFLxvYXyHSerqLxwuhTqIiEZA2IHM6dWFYjpr0PoKs
         rxhw==
X-Forwarded-Encrypted: i=2; AJvYcCUYp3xuCoWt83NmTeDHqyCd3LqWtrcL00I6qjnS4583hVOCprkDjbGjbdwc2k+k5tokOCgUTQ==@lfdr.de
X-Gm-Message-State: AOJu0Yxdz0xDsmpm5t13pbHJHaq7vMEhYXGDTMyyizfxzfg6rAdPLo57
	iGVhntAC7sYa+AWpVR4zaD9BHCxygpMflrRyO7jfl80NaWPtkAYYamiK+5lrpAc=
X-Google-Smtp-Source: AGHT+IHpN3U1TG9efnW8soPC9fSe7OgehBzejtvjmSG0SAKD+l8r4Tm6BjD1Ll1KCLSi5aNmwqTn1g==
X-Received: by 2002:a05:6214:1252:b0:6d8:8a01:64e2 with SMTP id 6a1803df08f44-6dd233af19amr983154136d6.43.1736247204665;
        Tue, 07 Jan 2025 02:53:24 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5857:b0:6d3:fa96:8dd with SMTP id
 6a1803df08f44-6dd154838f5ls1525066d6.1.-pod-prod-02-us; Tue, 07 Jan 2025
 02:53:23 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWVbO+OkayZAmvHWxIjtH+IVqfP9kF4QGbeUTq7KSMoOHgosvaTLhx+VE4oB9hwJ4IOEAD7PBcNe/UikQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:28c4:b0:7b7:2de:6f83 with SMTP id af79cd13be357-7b9ba7e6918mr8534737585a.41.1736247203327;
        Tue, 07 Jan 2025 02:53:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736247203; cv=none;
        d=google.com; s=arc-20240605;
        b=ZmuHt2jOl3Kr7VoF7QGtv15Y0B2wkQ3OH6zdCRuCPB49M+WrRszoN5NbGFPfwYO2xD
         o8d//lUbFxU0ATCgfqHTagHbdCWr+gLNl1KxoaspAN60mVXWKXPGnJs+hKyXTgLv4TiP
         n2pRI16NNg/RNdBCbkgqSH1BTB08Q7SWyHImTdmYsjUkWAVx7RpzbWTI9zHvR6/b9nJJ
         VJ/rCdt5vh8POKuQT2ryePixlMbIk47EDlUUPRLiZ/63h4sU0jzs5dYMGECE5SgK1F/S
         GOZ8dgF3LMT6GYEt2jlJ1LUxHINQuJ8KpEYwAIEu7ez1cV3kqCqinvRC9/vUZHd4Uo5M
         gsYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:delivered-to;
        bh=uIVYpYAxhnSYR0VryBL7AM69rcG9Bzn+as1gTT8GXNY=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Ryu6wLmlk8zGYVh2SsFN4XUU3viF+IcTDQgRt5k2yqmNsEnqvLy7u6yfxgRwjSxZ3n
         8Zv26QumvFeUylrg7OVbf+putwkaNF3d6TRdZtTypYwNDOTeAanOB3+qp6ViDSg6X2aG
         M5XMZTDYRTIS00R5+oU9A0BlMRi1cB6kJYyrqrmDo//AgnvLciynTvKGNBMf6CDvFJgC
         5fTdKU8pTigeKg5Ccz611J0m/nd+tEapfDLY0iewDmFHkRPHGKmlsb/p0jpznWSQBXXx
         sF3l/+BWqbcjqO7unLSS6fDegVgj0iL3uQI+mVVncKVSrDv6MqJW2FQq5bQ9JNHrNsqI
         wMXg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.170 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac4f0173si4627772485a.486.2025.01.07.02.53.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:53:23 -0800 (PST)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.170 as permitted sender) client-ip=209.85.219.170;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-669-K1i4j3ybM6y6zk2er7ezaw-1; Tue,
 07 Jan 2025 05:53:22 -0500
X-MC-Unique: K1i4j3ybM6y6zk2er7ezaw-1
X-Mimecast-MFC-AGG-ID: K1i4j3ybM6y6zk2er7ezaw
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 46BBF1955F77
	for <blinux-list@gapps.redhat.com>; Tue,  7 Jan 2025 10:53:21 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4278D195394B; Tue,  7 Jan 2025 10:53:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3FB3B19560A2
	for <blinux-list@redhat.com>; Tue,  7 Jan 2025 10:53:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B7CDB195609E
	for <blinux-list@redhat.com>; Tue,  7 Jan 2025 10:53:20 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
 [209.85.219.170]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-677-CI9xn6GxPJiukVz6fzQVnQ-1; Tue, 07 Jan 2025 05:53:18 -0500
X-MC-Unique: CI9xn6GxPJiukVz6fzQVnQ-1
X-Mimecast-MFC-AGG-ID: CI9xn6GxPJiukVz6fzQVnQ
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e3983f8ff40so18030257276.1
        for <blinux-list@redhat.com>; Tue, 07 Jan 2025 02:53:18 -0800 (PST)
X-Gm-Gg: ASbGnctV5GO3DDHorXM+GycTIyuMVkWmmK1MQVMFKDq7/FKTRgO7+2VbPVLXNmFIN4G
	lFl1Zg6UGeQRx+o4Gl9y1QiqJ7f3C8f/0Hw1Jew==
X-Received: by 2002:a05:690c:d81:b0:6e2:b263:104a with SMTP id
 00721157ae682-6f3f8136adfmr357531867b3.23.1736247197270; Tue, 07 Jan 2025
 02:53:17 -0800 (PST)
MIME-Version: 1.0
From: jace Kattalakis <khalfang1366@gmail.com>
Date: Tue, 7 Jan 2025 10:53:06 +0000
X-Gm-Features: AbW1kvap6RKe_Y7eTuI6spCRIZi2_1Xcn5RCX5r5FTCtDY-uaiiPLeOLAm1YpEA
Message-ID: <CAC9uDhY7d4CGxSOrPvuu0GM2C3uE-82OLN=7Yp_gzTv=cU8QXg@mail.gmail.com>
Subject: Quick guide to getting Kodi working with TTS
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: 5Fwxo_1wzCJvgSJpNw34a-wr7leOy00hHPuTIyD6OB4_1736247197
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4ZDvqq4S5-JjHezqR98hIZzrCjCt5SybNecmT5MM-vI_1736247201
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="0000000000006f8a3c062b1b8d57"
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of khalfang1366@gmail.com designates 209.85.219.170 as permitted
 sender) smtp.mailfrom=khalfang1366@gmail.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

--0000000000006f8a3c062b1b8d57
Content-Type: text/plain; charset="UTF-8"

This is something I've been meaning to put on the list for a while, but
only just now got around to it having to reinstall Kodi on a new laptop,
and I figured I'd share. Kodi does, in fact, work with the screenreader
addon., with a few caveats:

1. I've taken this from the Kodi screenreader topic on the forum, all
credits go to vbprofi for writing the original guide

2. I've only tested this on a 64 bit distro
3.I'm using the flatpak version of Kodi for this since it's distro
agnostic, but you can follow the instructions. I'll highlight the Flatpak
specific things as and when we get to them

Things you'll need:

1.Kodi installed either by flatpak or your distro's packages. I installed
it via Flatpak because on NixOS, the usual methods do not result in being
able to use addons, and I get a more up to date Kodi via flatpak

2. A way to download the files in question

3. The knowledge of where the Kodi directory is. It's either in .kodi or
within the flatpak directory. I'll put both paths in when we get to that

Ready? Let's go

1. Install Kodi, either by flatpak or your distor's package manager

2. Get the folder ready

Go to the pvagner/service.xbmc.tts Python 3 branch
https://github.com/pvagner/service.xbmc.tts/tree/2to3

Click on Code, Download ZIP, and download the file named
service.xbmc.tts-2to3.zip

Go to the pvagner/backends Python 3 branch
https://github.com/pvagner/backends/tree/2to3

Click on Code, Download ZIP, and download the file named backends-2to3.zip


Extract both folders, and put everything from the 2to3 folder into the
service.xbmc.tts/lib/backends folder

3M. Move the folder into the right location

It is either:

kodi (if installing via a package manager

Or, if using flatpak

~/.var/app/tv.kodi.Kodi/data/addons/

So eithr way you end up with the service.xbmc.tts folder inside the addons
directory

4. copy the addons/service.xbmc.tts/resources/settings.xml file to
userdata/addon_data/service.xbmc.tts/settings.xml

So for example, the path should look like

~/.kodi/userdata/addon_data/service.xbmc.tts/settings.xml
Or

~/.var/app/tv.kodi.Kodi/data/userdata/addon_data/service.xbmc.tts/settings.xml

5. Create the keymap


Go to your Kodi folder, and create the file
userdata/keymaps/service.xbmc.tts.keyboard.xml and insert the following:

<keymap>
  <global>
    <keyboard>
      <f1>NotifyAll(service.xbmc.tts,REPEAT)</f1>
      <f2>NotifyAll(service.xbmc.tts,EXTRA)</f2>
      <f3>NotifyAll(service.xbmc.tts,ITEM_EXTRA)</f3>
      <f4>NotifyAll(service.xbmc.tts,STOP)</f4>
      <f6>Addon.OpenSettings(service.xbmc.tts)</f6>

<f12>RunScript(special://home/addons/service.xbmc.tts/enabler.py)</f12>
      <numpadplus mod="ctrl">NotifyAll(service.xbmc.tts,VOL_UP)</numpadplus>
      <numpadminus
mod="ctrl">NotifyAll(service.xbmc.tts,VOL_DOWN)</numpadminus>
      <plus mod="ctrl">NotifyAll(service.xbmc.tts,VOL_UP)</plus>
      <minus mod="ctrl">NotifyAll(service.xbmc.tts,VOL_DOWN)</minus>
      <equals mod="ctrl">NotifyAll(service.xbmc.tts,VOL_UP)</equals>
    </keyboard>
  </global>
</keymap>

6.

If you installed to .kodi with your package manager and have been following
along with the keymap and addon directories in .kodi, then, hitting F12
should have Kodi beep and start talking

If using the flatpak you need to override permissions and enable it to
speak to the speech-dispatcher socket

flatpak override --user --filesystem=/run/user/1000/speech-dispatcher

After that, pressing F12 should have Kodi start talking.upKo

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--0000000000006f8a3c062b1b8d57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is something I&#39;ve been meaning to put on the list=
 for a while, but only just now got around to it having to reinstall Kodi o=
n a new laptop, and I figured I&#39;d share. Kodi does, in fact, work with =
the screenreader addon., with a few caveats:<br><br>1. I&#39;ve taken this =
from the Kodi screenreader topic on the forum, all credits go to vbprofi fo=
r writing the original guide<br><br>2. I&#39;ve only tested this on a 64 bi=
t distro<br>3.I&#39;m using the flatpak version of Kodi for this since it&#=
39;s distro agnostic, but you can follow the instructions. I&#39;ll highlig=
ht the Flatpak specific things as and when we get to them<br><br>Things you=
&#39;ll need:<br><br>1.Kodi installed either by flatpak or your distro&#39;=
s packages. I installed it via Flatpak because on NixOS, the usual methods =
do not result in being able to use addons, and I get a more up to date Kodi=
 via flatpak<br><br>2. A way to download the files in question<br><br>3. Th=
e knowledge of where the Kodi directory is. It&#39;s either in .kodi or wit=
hin the flatpak directory. I&#39;ll put both paths in when we get to that<b=
r><br>Ready? Let&#39;s go<br><br>1. Install Kodi, either by flatpak or your=
 distor&#39;s package manager<br><br>2. Get the folder ready<br><br>Go to t=
he pvagner/service.xbmc.tts Python 3 branch<br><a href=3D"https://github.co=
m/pvagner/service.xbmc.tts/tree/2to3">https://github.com/pvagner/service.xb=
mc.tts/tree/2to3</a><br><br>Click on Code, Download ZIP, and download the f=
ile named service.xbmc.tts-2to3.zip<br><br>Go to the pvagner/backends Pytho=
n 3 branch<br><a href=3D"https://github.com/pvagner/backends/tree/2to3">htt=
ps://github.com/pvagner/backends/tree/2to3</a><br><br>Click on Code, Downlo=
ad ZIP, and download the file named backends-2to3.zip<br><br><br>Extract bo=
th folders, and put everything from the 2to3 folder into the service.xbmc.t=
ts/lib/backends folder<br><br>3M. Move the folder into the right location<b=
r><br>It is either:<br><br>kodi (if installing via a package manager<br><br=
>Or, if using flatpak<br><br>~/.var/app/tv.kodi.Kodi/data/addons/<br><br>So=
 eithr way you end up with the service.xbmc.tts folder inside the addons di=
rectory<br><br>4. copy the addons/service.xbmc.tts/resources/settings.xml f=
ile to userdata/addon_data/service.xbmc.tts/settings.xml<br><br>So for exam=
ple, the path should look like<br><br>~/.kodi/userdata/addon_data/service.x=
bmc.tts/settings.xml<br>Or<br><br>~/.var/app/tv.kodi.Kodi/data/userdata/add=
on_data/service.xbmc.tts/settings.xml<br><br>5. Create the keymap<br><br><b=
r>Go to your Kodi folder, and create the file userdata/keymaps/service.xbmc=
.tts.keyboard.xml and insert the following:<br><br>&lt;keymap&gt;<br>=C2=A0=
 &lt;global&gt;<br>=C2=A0 =C2=A0 &lt;keyboard&gt;<br>=C2=A0 =C2=A0 =C2=A0 &=
lt;f1&gt;NotifyAll(service.xbmc.tts,REPEAT)&lt;/f1&gt;<br>=C2=A0 =C2=A0 =C2=
=A0 &lt;f2&gt;NotifyAll(service.xbmc.tts,EXTRA)&lt;/f2&gt;<br>=C2=A0 =C2=A0=
 =C2=A0 &lt;f3&gt;NotifyAll(service.xbmc.tts,ITEM_EXTRA)&lt;/f3&gt;<br>=C2=
=A0 =C2=A0 =C2=A0 &lt;f4&gt;NotifyAll(service.xbmc.tts,STOP)&lt;/f4&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;f6&gt;Addon.OpenSettings(service.xbmc.tts)&lt;/f6&=
gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;f12&gt;RunScript(special://home/addons/serv=
ice.xbmc.tts/enabler.py)&lt;/f12&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;numpadplus=
 mod=3D&quot;ctrl&quot;&gt;NotifyAll(service.xbmc.tts,VOL_UP)&lt;/numpadplu=
s&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;numpadminus mod=3D&quot;ctrl&quot;&gt;Not=
ifyAll(service.xbmc.tts,VOL_DOWN)&lt;/numpadminus&gt;<br>=C2=A0 =C2=A0 =C2=
=A0 &lt;plus mod=3D&quot;ctrl&quot;&gt;NotifyAll(service.xbmc.tts,VOL_UP)&l=
t;/plus&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;minus mod=3D&quot;ctrl&quot;&gt;Not=
ifyAll(service.xbmc.tts,VOL_DOWN)&lt;/minus&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt=
;equals mod=3D&quot;ctrl&quot;&gt;NotifyAll(service.xbmc.tts,VOL_UP)&lt;/eq=
uals&gt;<br>=C2=A0 =C2=A0 &lt;/keyboard&gt;<br>=C2=A0 &lt;/global&gt;<br>&l=
t;/keymap&gt;<br><br>6.<br><br>If you installed to .kodi with your package =
manager and have been following along with the keymap and addon directories=
 in .kodi, then, hitting F12 should have Kodi beep and start talking<br><br=
>If using the flatpak you need to override permissions and enable it to spe=
ak to the speech-dispatcher socket<br><br>flatpak override --user --filesys=
tem=3D/run/user/1000/speech-dispatcher<br><br>After that, pressing F12 shou=
ld have Kodi start talking.upKo</div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--0000000000006f8a3c062b1b8d57--

