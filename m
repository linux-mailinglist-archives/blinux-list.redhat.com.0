Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 703386F2537
	for <lists+blinux-list@lfdr.de>; Sat, 29 Apr 2023 17:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682782863;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=90ieudSagJRuz9qK3xPpIwtc6GGxSoETEL4a8y60g/0=;
	b=QY9lOSzCiaIuKN3Ois19LmvLYufrRfiDsulq3rdV6pjH4fhDIc5ok4FLJIZJZXejzIx2z1
	D0HcE+xGGYO7bkuaIA8rsVpzHSBCp7IQgG+XPyx+HVF71Cc1/dhYxdh2mK3vaZiRBn346n
	zdFaJB19Wo7sExi+KyHasnWOhf4ZWl0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-606-o_76E1ALNnyQ4AoAOl6ZTw-1; Sat, 29 Apr 2023 11:40:59 -0400
X-MC-Unique: o_76E1ALNnyQ4AoAOl6ZTw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0CF2C3814582;
	Sat, 29 Apr 2023 15:40:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0F7102166B26;
	Sat, 29 Apr 2023 15:40:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9538D1946A4F;
	Sat, 29 Apr 2023 15:40:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 29 Apr 2023 11:40:07 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible tty apps
In-Reply-To: <mailman.69.1682775602.290935.blinux-list@redhat.com>
References: <mailman.55.1682769294.290942.blinux-list@redhat.com>
 <mailman.69.1682775602.290935.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.62.1682782856.290944.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

lfm and pico come to mind.


-- 
Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
soap, ballot, jury, and ammo.
Please use in that order."
Ed Howdershelt 1940.

On Sat, 29 Apr 2023, Linux for blind general discussion wrote:

> Tim here, replying inline.
>
> > Can you recommend me some accessible:
> >
> > file explorer
>
> I found that `mc` and `vifm` were a bit noisy on the screen, while
> `nnn` was much more straight-forward.  So that's where I'd suggest
> starting.
>
> Similarly, lynx has a file-editor mode, so I can do
>
>   $ lynx .
>
> to get a simple/familiar interface, tag a couple files with "t" and
> then use "r" to remove them (my most common use-case).
>
> That said, most of the time I just use the usual command-line
> commands (ls, mv, cp, ln, rm, etc) and globs.
>
> > mail client working with gmail
>
> This one has become more challenging since Gmail switched to requiring
> OAUTH2 in a lot of cases.  I've seen links that suggest that
> mutt/neomutt can be configured to work with Gmail, using some
> helper-scripts.  I think you need to have your Gmail configured to
> have an "app password" as detailed at
> https://support.google.com/accounts/answer/185833?hl=en
>
> and include
>
>   set smtp_authenticators="gssapi:login"
>
> in your .muttrc or .neomuttrc config file.
>
> I hooked up my (largely unused) Gmail account to test it  many years
> ago, before the OAUTH change but that config no longer works for
> me and I haven't been inspired to retry.
>
> > maybe some audio player
>
> While I usually use `cmus`, it's more of a TUI, but it does offer
> a CLI "remote" interface, allowing me to bind keys to it or manipulate
> it from the command-line.  Alternatively, the Music Player Daemon
> `mpd` offers similar functionality with a variety of front-ends
> from CLI (mpc) to TUI to GUI to web:
>
>   https://www.musicpd.org/clients/
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

