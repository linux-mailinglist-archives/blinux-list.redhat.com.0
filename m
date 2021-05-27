Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0CFAC3938C8
	for <lists+blinux-list@lfdr.de>; Fri, 28 May 2021 00:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622155594;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RLiYDGeRcPTUhlKR0MmMRcnTv2jzK/zzGUhipiqU4ow=;
	b=FqubfHVAn1CX2CW7AQn/g4PZH5WPcDNfGZEoj0ffMissbFZn8Y6D1nLI2KG5+XUJrLaMDM
	l3hpigqhw7yNRsItOEWlHlivcIKkSd05JXChvy2R0ulDVM6wSeFQiXyd1ngiVNBz+kpvt+
	wlsA1LV22gwAAYU2D+87zxTW1Mq42L0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-XxKHtW8cPumZDm0QOFG_vA-1; Thu, 27 May 2021 18:46:31 -0400
X-MC-Unique: XxKHtW8cPumZDm0QOFG_vA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A868801B1A;
	Thu, 27 May 2021 22:46:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6285119C66;
	Thu, 27 May 2021 22:46:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C4E9B1801029;
	Thu, 27 May 2021 22:46:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14RMk975002619 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 May 2021 18:46:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 792A320ED7FC; Thu, 27 May 2021 22:46:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7443D20ED7F5
	for <blinux-list@redhat.com>; Thu, 27 May 2021 22:46:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C586802C16
	for <blinux-list@redhat.com>; Thu, 27 May 2021 22:46:05 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-183-yu44Mta8PGGdQHXqLa6Xpg-1; Thu, 27 May 2021 18:46:03 -0400
X-MC-Unique: yu44Mta8PGGdQHXqLa6Xpg-1
Received: by mail-qk1-f176.google.com with SMTP id 124so2347731qkh.10
	for <blinux-list@redhat.com>; Thu, 27 May 2021 15:46:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=87Mu91ynN6ZUAM4yHIiZui+PUp3t2uyoSt0SunMs+kQ=;
	b=Hfe3ssT6fYzXyn8wWB8jlwg6ZVx6b5oiQyFcHptu+JqICzA6dG070CTnFbdLSTsIkC
	uadgR4dwoP8e4OrvXq2N2Bg2nWKTQlX3WL/QnL61eszHFthLIkBskO8rTy6l0AyDwJwU
	u0Tq4iGdBcYoEi/nYX4Oa+qvhmdGhD46witwdQR3NZYdqaQ2dsRmVvkndEBNDeqjStCr
	gWoMNAlzhmTSVP/P+2DD3lDSmmLvTYr31/xUE0/VLe25QETpA9VfK0jn6hrSmAHTu7iv
	bQt+0o5z5gSBamF1foWn1hcmU/fD5n4sgdCi/1IjtfF0BgQJrgX5vCiI/5QCtyWYarcv
	zncg==
X-Gm-Message-State: AOAM5316J2geULq+4pifSlSKj47hJ9Qumx6eFYnPP5LvBwDSQkuWNjLo
	+ia8/iGPpXiA47ZJBdtiLVzOAg3jpnnAM0P7Eg4fvF3bn14=
X-Google-Smtp-Source: ABdhPJx/BGN9V+tJjdLP9t/tTrnMGzwwgik294VbdnzoFF+jhSV66a6ZAd4N071s8SmQuMiXxfBmHFTv4o6Lritz5SE=
X-Received: by 2002:a37:2791:: with SMTP id n139mr831482qkn.341.1622155562429; 
	Thu, 27 May 2021 15:46:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:293:0:0:0:0 with HTTP; Thu, 27 May 2021 15:46:02
	-0700 (PDT)
In-Reply-To: <20210526130051.2e6fddad@bigbox.attlocal.net>
References: <CAO2sX31bb2qOf=erBYE2ZQtnKpTYkFMOx8ynLHnvztRYQh=rjQ@mail.gmail.com>
	<20210526130051.2e6fddad@bigbox.attlocal.net>
Date: Thu, 27 May 2021 22:46:02 +0000
Message-ID: <CAO2sX31e1qtOiM0-usOHPQNvyDR=GuHEaHQo1qEAbwcUKGGxjQ@mail.gmail.com>
Subject: Re: Crawling a website for media files.
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so I know nothing about RSS and have never heard of a podcatcher
before, but in trying to follow the directions provided for castget,
it doesn't appear to have a package in the Debian repos, not even the
contrib or non-free repos(which I normally have disabled), at least
not under the name castget. I tried Googling castget, but even with
Debian in the search terms, I'm getting hits for pretty much every
distro but Debian.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

