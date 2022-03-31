Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5E94ED207
	for <lists+blinux-list@lfdr.de>; Thu, 31 Mar 2022 06:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648699442;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dS4gzR0HI2EEoNifjL01VX2UyxLuQzoQDq4kwBE7wX8=;
	b=gz1siTgYsNTfK8ps1sFWgUKn02aHx8O0vBcdq5rimy4y9Sp92ZU6QMG8oKaI3KsWkDmsE0
	vRKnU037y+hdn+JR8+o/tqJgUNqCiNJt+raMxvOwHFlzSk/Pq18wJz3cxQw/cTmbKuWKFp
	vTtOT9VK+bd4yhmtKB9dzdgTGpF1LrE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-325-0uXSbNuHPOauHqYq2NX0Vw-1; Thu, 31 Mar 2022 00:04:00 -0400
X-MC-Unique: 0uXSbNuHPOauHqYq2NX0Vw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B20D8101A54C;
	Thu, 31 Mar 2022 04:03:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 97F1640D1B9B;
	Thu, 31 Mar 2022 04:03:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 78B8C1947BBE;
	Thu, 31 Mar 2022 04:03:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Generating tactile drawings.
In-Reply-To: <mailman.5485.1648687074.111208.blinux-list@redhat.com>
Date: Wed, 30 Mar 2022 21:01:11 -0700
References: <mailman.5485.1648687074.111208.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.5718.1648699435.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Mar 30, 2022, at 17:37, someone (?) wrote:
> 
> Okay, so I'm interested in obtaining a piece of hardware capable of
> taking a vector or maybe even raster image and producing a tactile
> hard copy of some sort. ...

I have an old braille blazer, which can do either braille or plotting
(at 10 dpi).  I hacked up some software that accepts eight bit braille
codes and embosses the corresponding dots.  This works (for some value
of "work"), but the resolution is pretty poor.

I also played around a bit with "swell paper".  I found that I needed
to go through a pretty roundabout path: printing regular paper on my
ink jet printer, copying the sheets to swell paper, and finally running
the swell paper through a thermal expansion device.  It would be great
for someone to create a single device which combines a printer and the
expansion device, but I'm not holding my breath on any action from the
mainline vendors.  Wonders if a kickstarter might be worth trying...

My wife and I bought a Cricut device, which _should_ be able to do a
nice job of this sort of thing.  We haven't found the time to set it up,
however, let alone play with it.  So, we don't know what materials or
tips would give the best results, etc.  That said, please count us in
as being quite interested in the topic.

In terms of software, there are various approaches you could take.  If
you want to do line plotting on a raster device, one simple approach is
to set up a (zeroed-out) bit map in RAM and then draw lines of ones in
it, using something like Bresenham's line algorithm:

	https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm

Of course, this leaves open the question of how the vector plot data
should be represented.  There are various vector plot description formats
and associated generation tools.  You might want to investigate GNU plot:

	http://www.gnuplot.info/

Alternatively, if you're using a raster device, you could also consider
going through PostScript and then using something such as GhostScript
to generate raster files:

	https://www.ghostscript.com/

FYI, I used a laser engraver to carve away plastic and produce relief
images of walking maps for a blind friend.  The results were pretty nice,
but it took about a half hour to produce each one, so it wasn't either
economical or particularly scalable.

Anyway, I hope this some of this is helpful...

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

