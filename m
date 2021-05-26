Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 97980392248
	for <lists+blinux-list@lfdr.de>; Wed, 26 May 2021 23:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622065673;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XeLN1t/7KzLUbluWJDtQVE5cXr0pRV+i+U8ZibJ4tuc=;
	b=SNfbo4OE8frpp7vFjgpgrqOAxQjS9mRnmUEF3K9f/JdmpzwfK7JOCr23pSbrpFTFYeeMG9
	nNLzMDiAXIMLv3R5A1VLxApjvww1LpCIYKsQS80BCf/ojjGI0k131qOn3x846dafvtCrgg
	C5/gX+Ay5b9W93HWFYAGpZqDXfBOEfo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-530-9QuaVtRENWONCjWtKwlXgQ-1; Wed, 26 May 2021 17:47:51 -0400
X-MC-Unique: 9QuaVtRENWONCjWtKwlXgQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7C7C8015C6;
	Wed, 26 May 2021 21:47:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FC025D723;
	Wed, 26 May 2021 21:47:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 90F7355345;
	Wed, 26 May 2021 21:47:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14QLlTww014215 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 May 2021 17:47:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AAC922053481; Wed, 26 May 2021 21:47:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5EE820226C6
	for <blinux-list@redhat.com>; Wed, 26 May 2021 21:47:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5AFB383395A
	for <blinux-list@redhat.com>; Wed, 26 May 2021 21:47:24 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-418-iHpGXmiWNDGtn02hBrjlug-1; Wed, 26 May 2021 17:47:21 -0400
X-MC-Unique: iHpGXmiWNDGtn02hBrjlug-1
Received: by mail-qt1-f182.google.com with SMTP id i12so2058578qtr.7
	for <blinux-list@redhat.com>; Wed, 26 May 2021 14:47:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AaTJTvIL9/okurEsowQonYf2OUh0ZCI3IHn8yv26S7Y=;
	b=IzORJ+JuDE6vv9+ZgaJx2EiDr5GXQw8RMzCCUki9ivyAPFPaMAl1QKNB7AhVVjIwU3
	bsKyUSfYSf9XRHVa3RhOF5xMqv46sScZpWA9ADJ3a4RtGhn567e7zKqk/7qVH0G+PyGW
	p/fklMmaLmqLV2ey5CK6gkVTtXzl7s5wZFcHdzKc8eea/r6fofoo6W6nUWW8Kdyn7VHU
	yYZisCOf3aIzq8W9mK0F4EzRH9YW8RQRM+YAutk9iKHfBNAdxnThOA4aI+Le24lh3U/3
	AbPUYpt9fX01hAoP1gxzBiR4Y1R/jkXdWzeqzJ5F0lkqQkQO96/07W8gUNPBAM2tWd6i
	Jevg==
X-Gm-Message-State: AOAM532m0q7H8hr0GyeOffnEFflG4CwMZdVzxMGBBpG0tiMoAhowc6M9
	RYLPhalKDkLBwbDds3aAYbGJm9Q/A6c3PxniSkxd47XnuiU=
X-Google-Smtp-Source: ABdhPJzPhCMVRUIbs6im3/2soNS5NWyGFO8f+QWuBIemK6DoD4G8rEw/Vgrojf1W68XQ4gBYf0vu674bISX+5nV64+8=
X-Received: by 2002:ac8:4698:: with SMTP id g24mr280457qto.112.1622065640474; 
	Wed, 26 May 2021 14:47:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:293:0:0:0:0 with HTTP; Wed, 26 May 2021 14:47:20
	-0700 (PDT)
Date: Wed, 26 May 2021 21:47:20 +0000
Message-ID: <CAO2sX31_Cu7zANccjwnX-BdLELSggRLO30ekiuydR65egve-nw@mail.gmail.com>
Subject: Command-line computer vision.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, I'm aware of Tesseract and cuneiform for doing OCR on image
files, but I was wondering if anyone on this list knew of any
command-line utilities that might be able to tell me useful things
about the contents of images that contain no text. Even something as
simple as printing the image's palette in descending order of
abundance or recognition of basic geometric shapes would be useful I
think.

My primary use case is giving meaningful filenames to digital photos
where I know what photos are in the set, but not which photo is which,
and primarily, the photos are of crafts I've made and taken with the
camera my portable mediaplayer/talking eReader uses for OCRing print
documents(the device gives the photos very long, numeric filenames
that might be timestamps, but even that isn't of much use if I take
more than one photo in a round of blind photography and transferring
photos to my Desktop, especially since the device's clock resets to
midnight the moringing of January 1, 2014 whenever the battery is
pulled out).

I've tried googling and searching the package lists in Aptitude, but
all I've managed to find are libaries for writing computer vision code
into reobotics projects or cloud-based complex object AI stuff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

