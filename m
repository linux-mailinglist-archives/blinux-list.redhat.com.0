Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1626F24E4
	for <lists+blinux-list@lfdr.de>; Sat, 29 Apr 2023 15:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682775614;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vz6JJbB63UfHzK8CFUKx1ZiooLCTk6ax3izxyTtAlDY=;
	b=Uppl4WeWYRZ+NwDU7SFIIC+0ri8ic7Va3MumUnl0XKbFejqI6cpGOOTbfQ9zXhb3b9ryo/
	OF8R4BK4QVVugIMeqI2kXL+w5bCr4e/zPdkgVa8sD6KFH1PizMFSRPros4RxSM1bX3MU+q
	DmZriQJOiPMOOHQBAB98Awhc+YVMpfQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-166-Wwwx2MinPPKGlLhoO50Bsw-1; Sat, 29 Apr 2023 09:40:10 -0400
X-MC-Unique: Wwwx2MinPPKGlLhoO50Bsw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F1CF2A59561;
	Sat, 29 Apr 2023 13:40:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 408BF2027043;
	Sat, 29 Apr 2023 13:40:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 899C61946A49;
	Sat, 29 Apr 2023 13:40:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 29 Apr 2023 08:39:58 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible tty apps
References: <mailman.55.1682769294.290942.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.55.1682769294.290942.blinux-list@redhat.com>
Message-ID: <mailman.69.1682775602.290935.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here, replying inline.

> Can you recommend me some accessible:
> 
> file explorer

I found that `mc` and `vifm` were a bit noisy on the screen, while
`nnn` was much more straight-forward.  So that's where I'd suggest
starting.

Similarly, lynx has a file-editor mode, so I can do

  $ lynx .

to get a simple/familiar interface, tag a couple files with "t" and
then use "r" to remove them (my most common use-case).

That said, most of the time I just use the usual command-line
commands (ls, mv, cp, ln, rm, etc) and globs.

> mail client working with gmail

This one has become more challenging since Gmail switched to requiring
OAUTH2 in a lot of cases.  I've seen links that suggest that
mutt/neomutt can be configured to work with Gmail, using some
helper-scripts.  I think you need to have your Gmail configured to
have an "app password" as detailed at
https://support.google.com/accounts/answer/185833?hl=en

and include

  set smtp_authenticators="gssapi:login"

in your .muttrc or .neomuttrc config file.

I hooked up my (largely unused) Gmail account to test it  many years
ago, before the OAUTH change but that config no longer works for
me and I haven't been inspired to retry.

> maybe some audio player

While I usually use `cmus`, it's more of a TUI, but it does offer
a CLI "remote" interface, allowing me to bind keys to it or manipulate
it from the command-line.  Alternatively, the Music Player Daemon
`mpd` offers similar functionality with a variety of front-ends
from CLI (mpc) to TUI to GUI to web:

  https://www.musicpd.org/clients/


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

