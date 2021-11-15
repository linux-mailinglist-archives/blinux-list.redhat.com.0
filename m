Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDFD45167D
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 22:26:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637011615;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sv/lHLFiM5gP8bp61LMt8v/mempmPUSpagLyPQKZnOo=;
	b=SozeSnsfwnBIKyf09TdtTF1PT0YBuu6MRrdFKG81IRPpkQa+n0m8GBUKlFeh1TZtBshaaq
	YDYJYLuGkXPH3J+v16+DShgCLMaARbImRpTDYl+leQjAAdW1zTYehRdwEaHzVcIwxsEc0v
	xjqVaVSpLCjZRBjMGbBHAOJ+z4WPWpE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-msGM5HJ8OhCEevxP5XwhIg-1; Mon, 15 Nov 2021 16:26:52 -0500
X-MC-Unique: msGM5HJ8OhCEevxP5XwhIg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 228521023F4E;
	Mon, 15 Nov 2021 21:26:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A36B019723;
	Mon, 15 Nov 2021 21:26:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4FD5D1819AC1;
	Mon, 15 Nov 2021 21:26:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFLQYv8022108 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 16:26:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 87EA52026D11; Mon, 15 Nov 2021 21:26:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81D592026D2D
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 21:26:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B4F6185A7B4
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 21:26:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-350-yHfKG2J1N5KASn-JWhJEjQ-1; Mon, 15 Nov 2021 16:26:29 -0500
X-MC-Unique: yHfKG2J1N5KASn-JWhJEjQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HtMh44Gj3z3lkw
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 16:26:28 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HtMh4451Kzcbc; Mon, 15 Nov 2021 16:26:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HtMh43l9RzcbP
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 16:26:28 -0500 (EST)
Date: Mon, 15 Nov 2021 16:26:28 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
In-Reply-To: <d5cce23-86c-16c1-f43-18a8201c9210@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111151623590.26447@panix1.panix.com>
References: <d5cce23-86c-16c1-f43-18a8201c9210@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Alpine has an export message function.  That message is saved to a file of
your choice.  You can then background alpine and open that file say with
url-view and get to urls without screenfull restrictions.  Also use
probably in mate atrl to read that exported file for any other needs.


On Mon, 15 Nov 2021, Linux for blind general discussion wrote:

> On Sun, 14 Nov 2021, Linux for blind general discussion wrote:
>
> > Alpine allows opening an url in email; using the browser of your choice.
> >
> >
> > But aside from being tied to a terminal or a text-only virtual console,
> > Alpine reads email one screenful at a time, making it impossible to
> > navigate by element, and making it very difficult to skip or eliminate
> > quoted messages that people mostly on non-screen reader-related lists
> > like to quote, requote and rerequote 50 times, which gets unwieldy very
> > quickly. The other problem with screenful reading is that I have no
> > access to continuous arrow navigation, a SayAll function or something
> > like paragraph navigation that is usually available in desktop text
> > editors. It is also more difficult to select, copy and paste parts of a
> > message using a terminal, although it's not impossible. It's just not
> > consistent with other desktop applications. For many people these
> > wouldn't be huge problems, but my personal workflow does require things
> > to be continuously scrollable and SayAll functionality to be available,
> > as well as select/copy/paste functionality consistent with other desktop
> > applications to be available at times. I may have a different view for
> > my personal use if the message body opened into something similar to
> > w3m, which is scrollable, especially since element navigation through
> > email isn't quite as important as it is in a browser and I don't select
> > parts of messages to be pasted into other files or applications very
> > often, with the obvious exception of temporary passwords or verification
> > codes, so perhaps this is a feature that could be proposed for a future
> > release, unless of course it already exists and I don't know it. The one
> > possible showstopper for me would of course be threading. Anything that
> > doesn't support message threading would of course be a deal breaker for
> > sure. I prefer all threads to be collapsed, and to expend only the
> > threads I want to read, deleting the entire thread if I'm not interested
> > in reading it. If Alpine can do this, I could certainly run it on one of
> > my servers or in my own terminal, possibly as a backup if Thunderbird
> > fails, although I haven't seen this happen in years.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

