Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 592351750EB
	for <lists+blinux-list@lfdr.de>; Mon,  2 Mar 2020 00:22:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583104968;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ivxIkIVIIVX8m4s4SQt++uP7UbvNMZM5fgbYJbTwPZE=;
	b=MuxQwslDRptY0m+oUlhvjXqMZOGlh3x67KPXVnM2df3INqUbTw5KqB9qoDgpCf+NB/S3tj
	zsO4103goiCc2kSmv19b3dhtZc5qWC3Agi6HYSl0SqtxI4rCV9dl4ZOg47M+oh9uWLULSo
	/AbK2sQjy72cytJMAwGyPePwrRW3Xu8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-317-jpZqo4epP-ic_pORc6iThQ-1; Sun, 01 Mar 2020 18:22:46 -0500
X-MC-Unique: jpZqo4epP-ic_pORc6iThQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 065B3800D50;
	Sun,  1 Mar 2020 23:22:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18A6F5D9C9;
	Sun,  1 Mar 2020 23:22:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CBCC518095FF;
	Sun,  1 Mar 2020 23:22:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021NMSxw014284 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 18:22:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3B6F410D16AC; Sun,  1 Mar 2020 23:22:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 358C610D16A9
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 23:22:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A255E8007AC
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 23:22:25 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-193-R_YBucFmOu-idQM7SFbn0A-1; Sun, 01 Mar 2020 18:22:23 -0500
X-MC-Unique: R_YBucFmOu-idQM7SFbn0A-1
Received: by mail-wr1-f46.google.com with SMTP id n7so2337774wrt.11
	for <blinux-list@redhat.com>; Sun, 01 Mar 2020 15:22:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:user-agent:in-reply-to:references
	:mime-version:content-transfer-encoding:subject:to:from:message-id;
	bh=ReqJb9SDfd4MRkQ1OKKzpYyib1S+4NDXiQGwfYaNB8E=;
	b=WRjB48qUH8G+6essy4y4Wy/FiLDO39+ZbrYOKqIeCDGTlxZmgcjLt/6PXxpn5rDDh2
	xqKDRWCsgTa1P5Ogwi+mkLTvdRJGoRfN/onR2ELLSRCB07xoOrCQV30hF143ghtUZAkI
	+6UZmcmNwavtdkUL+WvLZ7240uyl+iqKgXDo1E0bZrvZ80hAoKjricaO8gQiSPhBfcDt
	k9sQULKMgRsMD2W/+DwsZ6JeXnl4Y3Yem76YVZ8rAJYiqaST2iXGwsXXIOO61757MBnc
	7y5xtpwOHXjaXxVEAHMFQKrrfP/5QsO+NfXAmwH+Tq4lT/f2tOUjhKJ4QNnnaN2t8KgJ
	dReg==
X-Gm-Message-State: APjAAAU3LXVzF27Ns01RSLSCS/5BDwDEmbDMBiHdPLEP9AUq3calaBHf
	O/JavjtwLZ+H5M+N2SWiFX4gA9Am5Mw=
X-Google-Smtp-Source: APXvYqy6RixWZqyutnweV8HGNsNOeKCk58hNCIPuMm7TtEOUibbnp8/4Bn1IzzPFlVzECK40rjY0kg==
X-Received: by 2002:a5d:4b82:: with SMTP id b2mr18139497wrt.102.1583104941759; 
	Sun, 01 Mar 2020 15:22:21 -0800 (PST)
Received: from android-18335d484709c69c.lan (cpe-75-189-192-174.nc.res.rr.com.
	[75.189.192.174]) by smtp.gmail.com with ESMTPSA id
	f195sm12616493wmf.17.2020.03.01.15.22.20 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Mar 2020 15:22:21 -0800 (PST)
Date: Sun, 01 Mar 2020 18:22:12 -0500
User-Agent: K-9 Mail for Android
In-Reply-To: <alpine.NEB.2.21.2003011715250.12264@panix1.panix.com>
References: <20200301111759.GA12551@abilitiessoft>
	<alpine.NEB.2.21.2003010712220.19233@panix1.panix.com>
	<CAO2sX310Obvpt=w1X=1+Tz7eWgXC5aiBz=53nond=1i0PpfSog@mail.gmail.com>
	<20200301173057.GA14419@abilitiessoft>
	<alpine.NEB.2.21.2003011300110.6533@panix1.panix.com>
	<alpine.NEB.2.21.2003011304590.6533@panix1.panix.com>
	<A1240AA4-BC16-4889-86D6-9AA548E30EDC@gmail.com>
	<alpine.NEB.2.21.2003011715250.12264@panix1.panix.com>
MIME-Version: 1.0
Subject: Re: Want to try a GUI. Which one is best?
To: blinux-list@redhat.com
Message-ID: <0B5B1936-E952-4318-B9D1-F7DEB200341A@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Neither MATE nor LXDM generally run into so much difficulty that they don't work at all. But for those times, there is Fenrir, which uses speech-dispatcher, or brltty, which can run at startup if braille is needed, and as I recall, braille is being used here. Actually, if braille is being used and speech is not, then startx is definitely not needed, because the text mode output will work until MATE starts, at which time Orca takes over using brlapi to produce braille output, and switching to a text-only console or the crash and burn of MATE should it ever happen will automatically use the running brltty with no difficulty whatsoever.

On March 1, 2020 5:18:37 PM EST, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>This approach is good until lxdm and/or mate run into difficulty.  Then
>your computer magically turns into a paperweight unless you have a
>rescue disk and know how to find the problem and recover from it.  If
>you go into console and run startx to get to the graphical user
>interface you're already logged in and if the graphical user interface
>or any part of it does not work, you still have the command line
>environment to use until you can get the graphical user interface
>fixed.
>
>On Sun, 1 Mar 2020, Linux for blind general discussion wrote:
>
>> Date: Sun, 1 Mar 2020 15:30:17
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: blinux-list@redhat.com
>> Subject: Re: Want to try a GUI. Which one is best?
>>
>> Ouch. All that just seems like a lot of roundabout to have to do. I
>install a full MATE desktop along with Orca, set
>org.gnome.desktop.a11y.applications screen-reader-enabled and
>org.mate.interface accessibility true if necessary  and use the lxdm
>display manager to start it. I then only have to change three lines to
>get a fully accessible desktop running at boot time. First, I uncomment
>the line that begins with autologin and set it true. Then I change the
>automatically logged in user from dgod to my username and uncomment
>that line. Then the only other thing I need to do is to uncomment the
>line that begins with session and change it from /usr/bin/startlxde to
>/usr/bin/mate-session. This approach of course doesn't work all that
>well on multi-user systems, but in most cases it's all you need. In
>this way, you always start with a desktop running, and if you need to
>do anything in a terminal, you can just open mate-terminal. I find
>myself using the terminal rather infrequently these
>  d
>>  ays for anything other than building source code, complex file
>management that still works better from a shell and package management,
>although there are package management applications available for most
>distros that don't require a terminal and work rather well, especially
>for finding new software. Most applications work so well with Orca that
>I have found desktop applications generally easier to use than chatty
>terminal output and page-by-page reading and the like.
>>
>> On March 1, 2020 1:07:30 PM EST, Linux for blind general discussion
><blinux-list@redhat.com> wrote:
>> >The most useful approach for accessibility users unless they use a
>> >mouse
>> >is to install startx and ratpoison and then have ratpoison run which
>> >brings up startx and startx then brings up mate.  The ratpoison is a
>> >package which when you get it working makes startx accessible more
>so
>> >than it already is.
>> >
>> >On Sun, 1 Mar 2020, Linux for blind general discussion wrote:
>> >
>> >> Date: Sun, 1 Mar 2020 13:02:51
>> >> From: Linux for blind general discussion <blinux-list@redhat.com>
>> >> To: Linux for blind general discussion <blinux-list@redhat.com>
>> >> Subject: Re: Want to try a GUI. Which one is best?
>> >>
>> >> This is really something debian does not provide.  Archlinux that
>can
>> >be
>> >> done with installing a few of the correct packages and I don't
>> >remember
>> >> the list now didn't save it in braille.  Now, with slint you can
>do
>> >all
>> >> of that and that's one of the installation choices.  Slint doesn't
>> >have
>> >> gnome either but does have mate.
>> >> https://slint.fr/ is the first url and search the page for
>> >accessibility
>> >> and read what you find.
>> >>
>> >> On Sun, 1 Mar 2020, Linux for blind general discussion wrote:
>> >>
>> >> > Date: Sun, 1 Mar 2020 12:30:57
>> >> > From: Linux for blind general discussion
><blinux-list@redhat.com>
>> >> > To: Linux for blind general discussion <blinux-list@redhat.com>
>> >> > Subject: Re: Want to try a GUI. Which one is best?
>> >> >
>> >> > Hello,
>> >> >
>> >> > Thanks for all your suggestions. I have Debian Buster,
>command-line
>> >only. I may just wait until the next Debian testing is available and
>> >see if they include Mate.
>> >> > I
>> >> > will be using brltty, and no speech.
>> >> >
>> >> > This leaves one concern in my original message for discussion. I
>> >want Debian to boot into the command-line, but I want to have a
>command
>> >or script for starting
>> >> > the GUI when I need it.
>> >> >
>> >> > Thanks,
>> >> > John J. Boyer <john.boyer@abilitiessoft.org>
>> >> >
>> >> > On Sun, Mar 01, 2020 at 01:54:07PM +0000, Linux for blind
>general
>> >discussion wrote:
>> >> > > Best I can tell, Mate 1.24 is currently available in both
>Debian
>> >> > > Testing(aka Bull's Eye which will eventually become Debian 11)
>> >and
>> >> > > Debian Unstable(aka Sid).
>> >> > >
>> >> > > It's unlikely something as big as a new version of Mate will
>make
>> >it
>> >> > > into Debian 9 aka Stretch or oldstable or Debian 10 aka Buster
>or
>> >> > > Stable as Debian priortizes stability over cutting edge,
>though
>> >it
>> >> > > might make it into backports(more likely for Buster than for
>> >Stretch,
>> >> > > but I confess to not knowing how long Debian supports
>Oldstable
>> >when a
>> >> > > new Stable is released).
>> >> > >
>> >> > > That said, while Orca, the primary, and possibly only,
>graphical
>> >> > > screen reader for Linux, is officially part of Gnome and
>> >persumably
>> >> > > optimized for that environment, and probably works so well
>with
>> >Mate
>> >> > > due to Mate's origins as a Gnome fork(as I understand it,
>Gnome 3
>> >> > > brought many controversial changes to look and feel and Mate
>> >startedas
>> >> > > a way to keep the Gnome 2.x look and feel in an updated
>> >environment),
>> >> > > Orca should, in theory, be able to work with any GTK-based
>> >Desktop
>> >> > > Environment or Window Manager, though anything QT-based(KDE
>chief
>> >> > > among them) is currently a bit hit or miss.
>> >> > >
>> >> > > Gnome or Mate might be the best options for a beginner as
>they're
>> >the
>> >> > > most well documented DEs for using them with Orca, but Knoppix
>> >using a
>> >> > > combination of LXDE and Orca when launching a full Desktop
>seems
>> >to
>> >> > > work well, and I've heard people have had success with the
>> >ratpoison
>> >> > > window Manager.
>> >> > >
>> >> > >
>> >> > > _______________________________________________
>> >> > > Blinux-list mailing list
>> >> > > Blinux-list@redhat.com
>> >> > > https://www.redhat.com/mailman/listinfo/blinux-list
>> >> > >
>> >> >
>> >> >
>> >>
>> >>
>> >
>> >--
>> >
>> >
>> >_______________________________________________
>> >Blinux-list mailing list
>> >Blinux-list@redhat.com
>> >https://www.redhat.com/mailman/listinfo/blinux-list
>>
>> ~Kyle
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
>
>-- 
>
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://www.redhat.com/mailman/listinfo/blinux-list

~Kyle
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

