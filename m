Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B12B6693352
	for <lists+blinux-list@lfdr.de>; Sat, 11 Feb 2023 20:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676144007;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rMgajV+iHaQFyIU7wqOm194oAQAJvFHHhPihjkcGOqw=;
	b=TzKofVVeHCdwvgvXPqIV+XpMfYS2RSNpLexImtcXnPTgsOm5P/uBBEDX269CyXgNgt6HyV
	ezL9mqbt2Q7mX0Z/6GljI8dZdkHdZDGyjCCV6l0QNaMhdbKad3Ti0pBorVPxuDv4AUjzQ1
	mh4YMHUBH5im+WtFxb66HK+WSwaWUK0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-440-KRVli5s1OJS2c8em4cn8Wg-1; Sat, 11 Feb 2023 14:33:23 -0500
X-MC-Unique: KRVli5s1OJS2c8em4cn8Wg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B2963C0219B;
	Sat, 11 Feb 2023 19:33:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9580C140EBF6;
	Sat, 11 Feb 2023 19:33:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BB6E21946597;
	Sat, 11 Feb 2023 19:33:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Clipboard in gnome
In-reply-to: <mailman.5717.1676057804.8176.blinux-list@redhat.com>
References: <mailman.5776.1676049044.8169.blinux-list@redhat.com>
 <mailman.6032.1676051129.8177.blinux-list@redhat.com>
 <mailman.5817.1676055329.8175.blinux-list@redhat.com>
 <mailman.5717.1676057804.8176.blinux-list@redhat.com>
Comments: In-reply-to Linux for blind general discussion
 <blinux-list@redhat.com>
 message dated "Fri, 10 Feb 2023 19:36:39 +0000."
MIME-Version: 1.0
Date: Sat, 11 Feb 2023 13:33:03 -0600
Message-ID: <mailman.47.1676143991.1039597.blinux-list@redhat.com>
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
Content-ID: <6161.1676143982.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is been a learning exercise all right.  One thing that
hasn't happened yet is being able to store more than one thing at
a time on the clipboard with xclip.  Also, unless I have
something set wrong, it is not possible to use xclip from a true
command line.  If I press Super and select the letter t and get
the terminal, it's a terminal in gnome so xclip <somefile works
fine in capturing what's in the file to the clipboard.  If I log
in to this system via ssh from a pure command line shell, I get
the shell prompt and things are good but xclip <somefile or xclip
-o both cause xclip to complain about there being no  display as
shown here:

1m martin ~ $ xclip -o
Error: Can't open display: (null)

	This certainly is better than nothing but you can't ssh
in from another system and coax the clipboard along by feeding
very-long-string-1 in, feeding that into a GUI app, then using
the command line to stuff in very-long-string-2 so you can drop
that in another box on your GUI app.

	I've done that more than once using Windows or a Mac.

	There is a mail application for Linux called evolution
which can interface with a Microsoft365 mailbox so one can get
their mail from that mailbox and use it on a Linux system.

	In one place, I put in a url that is 48 characters long
in to a box and, of course, it has to be exactly right then a
second 38-character string which is an ASCII representation of
hexadecimal digits which make no sense at all so there's no way
to make sure it is right other than copy and paste.  Anything
else is fertile ground for human errors and if it's wrong, the
job just breaks and you don't know what went wrong.  It may be
that nothing went wrong but one took so much time fiddling with
the copy process that some clock timed out somewhere because it
thought that there was hacking or some other mischief.  The
builders of some of this security framework have really strange
ideas and I often say that the bad guys won a long time ago in
that now the built-in security is the denial of service attack
and they just sit back and laugh and say, "Our work is done."

	After doing a small amount of research, I read that
clipit is no longer being developed and diodon is what you get in
Debian, anyway, when you download clipit.

	If I could get multiple entries to store on the
clipboard, I would be a happy camper right now since it would be
possible to get both of those awkward strings to just slide right
in where they belong.

	For anybody else new to setting things up, I also
discovered that xclip works better if you set it up to start with
X by going in to 

.config/autostart and putting a startup script for xclip -silent.
When your shell goes in to suspension or logs you off, xclip
forgets whatever was in it.

	You know that is working if you boot up and then

$ ps ax |grep xclip |grep -v grep

You should see a process number and status information which you
can read about in the man page for ps.  If you didn't get your
startup script right, you won't see a process for xclip.

Martin McCormick

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

