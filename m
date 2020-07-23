Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5CBEF22B4C4
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jul 2020 19:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595525057;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=coIzVubllu58yWAYoiCDNM1cc5JLqG7HR3+oXDIPk7M=;
	b=i+hCFKB4E+7oMRBYgmp5kN3P8dvkyGUFdbGCwUVk2lIOb3viR8YXYFJUc0E54EPtWyoCN2
	Yau5nCbkql3Gv5z2RZTg2GjyKMA9os7i7sOBXsm8+5ngT3cTBbHYb4VztHoeXI6IkHEII/
	y86B9ZcTaq7c6sEu6YYYtD7wulV/YIE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-db7f5q8-Mz2R00_tHB-wZA-1; Thu, 23 Jul 2020 13:24:14 -0400
X-MC-Unique: db7f5q8-Mz2R00_tHB-wZA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04AE41005A45;
	Thu, 23 Jul 2020 17:24:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B46F971D00;
	Thu, 23 Jul 2020 17:24:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4397C1809554;
	Thu, 23 Jul 2020 17:24:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06NHNwIQ031321 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Jul 2020 13:23:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2308F2157F23; Thu, 23 Jul 2020 17:23:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1DACD2156708
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 17:23:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 100791012444
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 17:23:56 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-199-Pl1A-28cN2CkWloRNNMdDQ-1; Thu, 23 Jul 2020 13:23:53 -0400
X-MC-Unique: Pl1A-28cN2CkWloRNNMdDQ-1
Received: by mail-qk1-f173.google.com with SMTP id e13so6096639qkg.5
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 10:23:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=fhUGGLks2wwy09vbzTc4Um/w25fPWltfcDe2Ym3m1nI=;
	b=nWHMYxyAZifxvevqeZO39Wj9+RftjaFmNWmg6WtKbsT5wVn5fowZ797OfA3c8Q+E6j
	tV9DUQMJ2+PXBBs1PMArkir03kogeBtTiuWhjx5eT6sQThu0/I6ZLwJBy9AnsceRss+a
	G2L+N+f/Cox/YPprqiQDVmnQlN6UVo6lr0bnnvW6xGSW8H1QCWSzbC6Tf0zcdIJQ8uFH
	KIMSz9KNqrRxbqDIdA2pWa9kbgyxHKsn7f+y3xIIcSCoNIqt5iVNnUxF004xrYzXDWkD
	1/98G85nCZriHsBitheBufXQxHKwI9e1Eq5oaQ/sbwHNCNqBwNj936t5xJGzoxAqIx9j
	n6pQ==
X-Gm-Message-State: AOAM5339KK4ts5aF9NcHDS0Ztha3qH42bqOij3ZjXwbiTQUT6HMxVaMG
	dgB9gmb93mLGUO8lRc78Rq+/XMVzMSuL1F/EELkDfY29
X-Google-Smtp-Source: ABdhPJz5vI0lY3REL+cvqoi0ieRBhpzPz/3PYsCZT8XFyutEpWrLwtf8HyD3bpENus6mQqr2+V1/KOq0ghomXx6maSk=
X-Received: by 2002:a37:5bc3:: with SMTP id p186mr6427190qkb.401.1595525033079;
	Thu, 23 Jul 2020 10:23:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:4e90:0:0:0:0:0 with HTTP; Thu, 23 Jul 2020 10:23:52
	-0700 (PDT)
In-Reply-To: <20200723165930.GB2593@rednote.net>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200723165930.GB2593@rednote.net>
Date: Thu, 23 Jul 2020 17:23:52 +0000
Message-ID: <CAO2sX33QTVyvP3fFRvk9U=vJY4dF2Qfuc-CQqeeNQ0M_+aGVJw@mail.gmail.com>
Subject: Re: installing speakup on RHEL 7/8
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, I'll admit I know next to nothing about how kernel stuff works,
but I thought espeak had been trapped in staging for years with few
prospects of ever getting promoted to main or whatever its called for
modules that are pretty much guaranteed to be included in the default
kernel build for any distro not running a deliberately stripped down
kernel... or has someone recently actually been making progress
towards getting speakup to the point of such a promotion?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

