Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9DE7ADA1C
	for <lists+blinux-list@lfdr.de>; Mon, 25 Sep 2023 16:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695652199;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PY34DQ4f/1fYOtRJZrxKM3OOWMkGrq3vnUJyOWcW+C0=;
	b=BscHgvo9x0bKmNfLTGjX5Qg112VFu5Q6W9NZj8yHNrVl4huNIKRjxTwDaO3q/yy5L+KmgZ
	KbV228bUdPOCi1cW0JGjIoJ3Mcj53rA9zntdbRgOhYo2HFD0dFdkPPUTSAI+uwlRGOaPzT
	pmNW68MJxoTDX0/K+MwuwOia9ClwFk0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-281-eNU5CDyqNLWI43jRuvxWCg-1; Mon, 25 Sep 2023 10:29:56 -0400
X-MC-Unique: eNU5CDyqNLWI43jRuvxWCg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C220A101A550;
	Mon, 25 Sep 2023 14:29:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9D14810EA0;
	Mon, 25 Sep 2023 14:29:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0F3C919465B3;
	Mon, 25 Sep 2023 14:29:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 25 Sep 2023 10:29:37 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Talking Images for 64-bit Laptop
In-Reply-To: <mailman.328.1695651782.4021072.blinux-list@redhat.com>
References: <mailman.2112.1695416202.2242621.blinux-list@redhat.com>
 <mailman.2216.1695421961.2242620.blinux-list@redhat.com>
 <mailman.294.1695641943.4021072.blinux-list@redhat.com>
 <mailman.258.1695649240.4021075.blinux-list@redhat.com>
 <mailman.328.1695651782.4021072.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.329.1695652180.4021078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That's how that's done on sourceforge.net.  The webmaster would have to do
that, and now sourceforge.net is out of date on latest version for some
reason.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Mon, 25 Sep 2023, Linux for blind general discussion wrote:

> That download is happening now.  It's the same url except that
> the version number now is 15.5 which is fine and explains what is
> happening.  What I copied from the handbook is 15.0.  I wish all
> problems were this easy to figure out.  A suggestion might be to
> make the url refer to something like latest_version and that designation
> would always describe whatever version was most current.
>
> Martin
> Linux for blind general discussion <blinux-list@redhat.com> writes:
> > Have you tried:
> > https://slackware.uk/slint/x86_64/slint-15.0/iso/slint64-15.0-5.iso
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

