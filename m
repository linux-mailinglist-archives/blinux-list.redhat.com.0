Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 378B4352BA9
	for <lists+blinux-list@lfdr.de>; Fri,  2 Apr 2021 17:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617376625;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f0TATV6EwuSLpRfO+K+rF+jnZKIfFRIgv/TN1s+s7Hw=;
	b=CS+OOWju1grwmuNTOhRM+k9MWXkgC5QvSP+CK6U2lHq2acC7riXPiLrupr6UWJ7F8U7dcf
	OAE2llQHhaWnJr1zswtOjM+gfjai2SNtpnbLbdTVgiAThuRGMoel+AIxWjBzHXG9TIhYXt
	pNT/L0X1xRNolofg6/f+5sL5mWDjumM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-17WppcRMOneC0IkmNDKGaw-1; Fri, 02 Apr 2021 11:17:03 -0400
X-MC-Unique: 17WppcRMOneC0IkmNDKGaw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83BFA802B5B;
	Fri,  2 Apr 2021 15:17:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63E8210016DB;
	Fri,  2 Apr 2021 15:17:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 369714BB7C;
	Fri,  2 Apr 2021 15:17:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 132FGvqh003306 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Apr 2021 11:16:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A7EDD2026D64; Fri,  2 Apr 2021 15:16:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A1DCD2026D60
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:16:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 618B2811E93
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:16:55 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
	[209.85.216.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-310-89UgZ80QNiyQBDi1qVdFZw-1; Fri, 02 Apr 2021 11:16:52 -0400
X-MC-Unique: 89UgZ80QNiyQBDi1qVdFZw-1
Received: by mail-pj1-f44.google.com with SMTP id
	x7-20020a17090a2b07b02900c0ea793940so4743114pjc.2
	for <blinux-list@redhat.com>; Fri, 02 Apr 2021 08:16:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=PUvp3EMhfM4i9c0UpRLM0dsO/PotNvob9nKLei5sfPs=;
	b=dfxUa3PscXqoBWSncB6+JnL+Wr6CqGZ4IQFYgCg9CE6J/EqIRovD4LTUhxkvGeykvi
	niVoP6XLD4eIurr2Dd2bjKe7XIXcWv6AByJniMFlIDkgm7BT9cot8fR7d/dGqRIGeJkd
	5H6c7gupOMDtgE0lorF047QvNsY7V9f8ylkNRI0YnGVD+tWvXY3okMdFZMjzEoBJpPzb
	qHmWIDaxcILp0SazvXMeXm/X/5qWKoGiTtkMcrOiK1kxY7kZPQ9uEG6oS2WMHjGzHN2u
	9THqaRQBinYax59mMDRXpFBe9e+VHuikX9QZANTotYrtqlfCcHGunQRcK1jkF2MvSW52
	NyHw==
X-Gm-Message-State: AOAM533YK7679EghGrpwAZ3XTA3tgqN152jQLO5nuVAEjsFBmL3HCKsm
	gMKGV2mTdQzH2XnQjDVB2OdOgKzgkOZNg1hCW8UueJctnWXJIQ==
X-Google-Smtp-Source: ABdhPJwat4yqVsCkXeHm+jlIUUWYBkm5x0dHZQDwQbeAdQyQhmPm/fZ+0gCsP2AKcLwD4hoBHN82xzAu0hnWws7hK3c=
X-Received: by 2002:a17:902:8494:b029:e6:cb9a:9fd5 with SMTP id
	c20-20020a1709028494b02900e6cb9a9fd5mr12810127plo.81.1617376610866;
	Fri, 02 Apr 2021 08:16:50 -0700 (PDT)
MIME-Version: 1.0
References: <00ab01d727d1$ce7dd480$6b797d80$@cox.net>
In-Reply-To: <00ab01d727d1$ce7dd480$6b797d80$@cox.net>
Date: Fri, 2 Apr 2021 11:16:39 -0400
Message-ID: <CAGPwheCSnjzsHsFOw4E_GRiSOru7_j9j4pvzB0JXuRBd9W0Nig@mail.gmail.com>
Subject: Re: linux and orca
To: blinux-list@redhat.com
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Which desktop is installed?  I believe that the default desktop on Rasbian
is something called Pixel.  This desktop may not work with Orca.  This may
be why you are having problems with getting Insert Space  to work.  The
Mate desktop works well with Orca.

On Fri, Apr 2, 2021, 11:08 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hello, my name is Gery Gaubert.  I live in Louisiana.  I am a retire I.T.
> professional.  I enjoy cooking, ham radio, family and learning nnew things
> to name a few.  I was given a raspberry pi as a retirement gift and I want
> to learn how to use it.  I have Raspbian installed and orca screen reader.
> I want to change some of the orca settings.  I read that you use insert and
> space to do that but that doesn't work.  What am I missing?
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

