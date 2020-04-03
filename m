Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id B37A219DAA7
	for <lists+blinux-list@lfdr.de>; Fri,  3 Apr 2020 17:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585929281;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RiLphs1dwgox/HhpP8hqodt0tJn4+RfbeCthFqS3mEI=;
	b=S+qHJuhpYoxLO1zoeICyiiWr1cmbvhYWJKw2rbUV/wQre/PejNu76pM4Vd09AOF4We3cj9
	yVezO5ZoUvtFMJT+Eqbo1tPUX4P8Xy5+hsT392xdUH9N9MvZWD/f5+NCR71CiiqGjCXYpk
	K3UI21k6GZcmLr0wazB3wjrzgEmTO7o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-391-YkwH_5rmNjS1zT5-UCpLPA-1; Fri, 03 Apr 2020 11:54:39 -0400
X-MC-Unique: YkwH_5rmNjS1zT5-UCpLPA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD59C13F6;
	Fri,  3 Apr 2020 15:54:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BD535DA7D;
	Fri,  3 Apr 2020 15:54:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E9C041819ACE;
	Fri,  3 Apr 2020 15:54:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 033FsKCm030291 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Apr 2020 11:54:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 373F813CCB5; Fri,  3 Apr 2020 15:54:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3365B13CCB3
	for <blinux-list@redhat.com>; Fri,  3 Apr 2020 15:54:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E79998007D0
	for <blinux-list@redhat.com>; Fri,  3 Apr 2020 15:54:17 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-499-5n4SgQIhMGaj3mBh0XRmQQ-1; Fri, 03 Apr 2020 11:54:15 -0400
X-MC-Unique: 5n4SgQIhMGaj3mBh0XRmQQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48v4HW3Kn7zpDD
	for <blinux-list@redhat.com>; Fri,  3 Apr 2020 11:54:15 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48v4HW2Lxszcbc; Fri,  3 Apr 2020 11:54:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48v4HW1wr9zcbW
	for <blinux-list@redhat.com>; Fri,  3 Apr 2020 11:54:15 -0400 (EDT)
Date: Fri, 3 Apr 2020 11:54:15 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Newbee Linux user introduction
In-Reply-To: <20200403072733.GA2202@rednote.net>
Message-ID: <alpine.NEB.2.21.2004031146190.5938@panix1.panix.com>
References: <B0D71794-95D6-435A-84FE-71D2D3D8575C@gmail.com>
	<alpine.NEB.2.21.2003271427590.22610@panix1.panix.com>
	<20200403072733.GA2202@rednote.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 033FsKCm030291
X-loop: blinux-list@redhat.com
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

It's possible to do sudo apt install espeakup.  Once that's finished,
sudo systemctl enable espeakup.service could be done.  What you just did
was to install espeakup and enable it so espeakup starts talking on boot
of the system.  Since mate takes care of your login you could leave the
system like that against the day you couldn't log in with mate.  Better
yet would be to do
sudo systemctl disable gdm.service
If that returns an error do
sudo systemctl disable lightdm.
One of those two will work.
On booting of the system speakup comes up and you can log in on the
console.
Here's the piece I'm not completely certain of so maybe others on this
list can help out.
You can run mate by running a script called startx if the necessary
packages are on your system and you get a startx script in your home
directory with the last line being something like
exec mate
To get back to the console, control-alt-f1 then hit control-c.
Even if any part of mate isn't working you are able to log into the
console and run cli.

On Fri, 3 Apr 2020, Linux for blind general discussion wrote:

> Date: Fri, 3 Apr 2020 03:27:33
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Newbee Linux user introduction
>
> Welcome to blinux, Simon. GGood to see you on this list and hope it
> provides you the support you're seeking.
>
> As the person responding to you noted, you made some smart decisions,
> even if by chance! <smile>
>
> Let me provide a bit more perspective. The iso image you used is
> oriented around providing an accessible graphical desktop. That's not a
> bad thing.
>
> But it's different from what you'll get with the Arch installers,
> including the newer tarch. Those give you a minimal accessible console
> environment suitable for Speakup and/or Fenrir and for brltty on the
> console. You're on your own to build that into Gnome with Mate and a
> functioning Orca.
>
> Can you backfill for console accessibility? Probably, but were this my
> problem, I think I'd reinstall to start with those tools working, not
> try to back fill. Having given it all of 15 minutes consideration I
> suspect that's the easier path. Were I tasked to back fill, I'd probably
> want to do it over ssh, though. Did your image set you up with the ssh-server? I
> rather suspect not.
>
> Hope this clarifies things a bit.
>
> Best,
>
> Janina
>
> Linux for blind general discussion writes:
> > You probably didn't choose gnome when you installed debian so you have
> > the mate desktop installed.  That was a very smart choice.  After you've
> > logged in inside orca, try hitting the alt key and holding that down
> > then hit f1 key.  If I am right a whole set of menus and commands will
> > start speaking as they come up on your screen.  That particular
> > keystroke combination does not do that in gnome normally.  One could
> > force gnome into classical mode where this would work but you're
> > probably better off not doing that especially if your machine is light
> > on resources.
> >
> > On Fri, 27 Mar 2020, Linux for blind general discussion wrote:
> >
> > > Date: Fri, 27 Mar 2020 13:27:41
> > > From: Linux for blind general discussion <blinux-list@redhat.com>
> > > To: blinux-list@redhat.com
> > > Subject: Newbee Linux user introduction
> > >
> > > Hello,
> > >
> > > My name is Simon and I am from UK.
> > >
> > > I have been a Windows and for 13 years a mac user.  I have no training in computer programming.  Whatever I do know , I have learnt as I went along.  I would like to give Linux a go, having failed a few years ago.  But I?m quite determined to learn.  I have just joined this group, and I would like to ask you to be patient with me as I may be talking nonsense or asking very basic questions.  The world of Linux is very new to me and I am still very much learning the concepts and terms other experienced users take for granted.
> > >
> > > If you had any suggestions or pointers to any materials I might use to start, please help.  I understand from my research on the subject of Linux accessibility that CLI is the way to go.  I have no sight and I use speech as well as Braille.  I have just managed to install Debian 10.3 distro on an old laptop Dell inspiron 640, have successfully activated Orca during the installation and completed it.  I can?t yet determine whether I?m using gnome desktop or Mate, and if Gnome, whether it would be easier for me to use Mate , and if the latter is true, how I would install or choose Mate if it?s already installed.  I?m not quite sure yet either exactly what the difference between the two is.  I realize my Dell is 13 years old, and I will want to purchase a much newer second hand laptop as soon as I?ve saved for it.  This might enable me to install something different.  A friendly person on another list suggested tarch.  I am beginning to research Tarch and want to be ready to use i
 t
>  so
> >   if there are any documents that would help me understand how Tarch works after the installation, and whether I can install it without sight, please say.
> > >
> > > Thank you for listening.
> > >
> > > Simon
> > >
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> > --
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

