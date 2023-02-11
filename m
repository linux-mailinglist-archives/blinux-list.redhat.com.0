Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D33916933D1
	for <lists+blinux-list@lfdr.de>; Sat, 11 Feb 2023 21:52:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676148765;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WTB+9bk8ZnpHOIa1R2aE3uVsaDooz/yasQOsMkeTEgk=;
	b=NiuQQhDPxltX5MY7nbUf87GrdG/33fTh+sjS7hdE08juMXBuLQN9l8osv2xMpGcws6wJQh
	8AATJ6iuPcGwpHEhv9B5mM1sibR2JP/SxQMKhcqsa2vk+4tECQ8ZAOC3WrZrAWwwUWbIE3
	eW93ix2t97cGgHi5d/fZHV3IpJYgKnM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-100-RI3nXtg6P--ypHKGM3lMuw-1; Sat, 11 Feb 2023 15:52:39 -0500
X-MC-Unique: RI3nXtg6P--ypHKGM3lMuw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB02B101157D;
	Sat, 11 Feb 2023 20:52:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4AD5714171B6;
	Sat, 11 Feb 2023 20:52:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2816B1946597;
	Sat, 11 Feb 2023 20:52:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 11 Feb 2023 20:52:21 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Clipboard in gnome
References: <mailman.5776.1676049044.8169.blinux-list@redhat.com>
 <mailman.6032.1676051129.8177.blinux-list@redhat.com>
 <mailman.5817.1676055329.8175.blinux-list@redhat.com>
 <mailman.5717.1676057804.8176.blinux-list@redhat.com>
 <mailman.47.1676143991.1039597.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.47.1676143991.1039597.blinux-list@redhat.com>
Message-ID: <mailman.37.1676148746.1039589.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here again, replying in-line.

> being able to store more than one thing at a time on the clipboard
> with xclip.

xclip/xsel only interacts with the primary (selection buffer),
secondary (also sort of a lesser-used selection buffer), and the
clipboard buffer.  The ability to access more than one thing is
what a clipboard manager like clipit is for.  It retains the history
and lets you recall previous selections from history.

For a poor-man's clipboard history, you can dump the output of
xsel/xclip to a file and the recall it later:

 $ xsel -ob > youtube_url.txt
 $ xsel -ib < my_file.txt

then paste that content of "my_file.txt", and then restore the
clipboard contents to what they were before

 $ xsel -ib < youtube_url.txt

which allows you to even persist clipboard contents across reboots:

 $ xsel -ob > youtube_url.txt
 $ sudo reboot
 ...
 $ xsel -ib < youtube_url.txt

You might even create a subdirectory to contain them such as ~/clip

> If I press Super and select the letter t and get the terminal,
> it's a terminal in gnome so xclip <somefile works fine in capturing
> what's in the file to the clipboard.

Correct because the clipboard is local to the machine it's running
on.  In this case, it's your local machine.

> If I log in to this system via ssh from a pure command line shell,
> I get the shell prompt and things are good but xclip <somefile
> or xclip -o both cause xclip to complain about there being no
> display

Correct, because if you're running xclip on the remote machine that
you've SSH'ed into, there's no local copy of X running there (usually)
for it to access.  If there is a logged-on session of X on that
remote machine, you should have a ~/.Xauthority file on that machine,
and you might be able to set your $DISPLAY to access the remote
clipboard with xclip/xsel:

  me@local$ ssh me@remote
  me@remote$ export DISPLAY=:0.0
  me@remote$ xsel
  This is the content of the clipboard on the remote machine
  where me@remote is logged in

Note that xclip/xsel can work over pipes though, including SSH
connections, allowing you to do things like

  me@local$ xsel | ssh me@remote 'cat > local_clipboard_contents_on_remote_machine.txt'

to dump your local clipboard to a file on the remote machine

> This certainly is better than nothing but you can't ssh
> in from another system and coax the clipboard along by feeding
> very-long-string-1 in, feeding that into a GUI app, then using
> the command line to stuff in very-long-string-2 so you can drop
> that in another box on your GUI app.

I think what you're describing here is similar, so you might do

  me@local$ ssh me@remote ls | xsel -ib

to get a listing of your home directory on the remote machine and
put it on the local clipboard or

  me@local$ ssh me@remote 'cat data.txt' | xsel -ib

In both of those cases, xsel is running locally, but taking its
data from a pipe that is populated from a remote machine.

> clipit is no longer being developed and diodon is what you get in
> Debian, anyway, when you download clipit.

Interesting.  I had some recent issues with clipit on my FreeBSD
daily driver (the edit-history window sometimes hangs) so it would
be worth investingating diodon to see if that's fixed for me.  Thanks
for doing the research for me.

> If I could get multiple entries to store on the clipboard, I would
> be a happy camper right now since it would be possible to get
> both of those awkward strings to just slide right in where they
> belong.

Using temporary files to store clipboard contents should give you
an intermediate stop-gap solution for multiple clipboard contents,
and piping contents via ssh should let you communicate them across
machines.  If you have trouble with either aspect, let me know which
machine/OS is local, which machine/OS is remote, which machine
(local or remote) is running Evolution, and which machine needs the
information copied to/from it.

Hoping this helps,

-tim




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

