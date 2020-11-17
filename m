Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 19C4B2B6B6E
	for <lists+blinux-list@lfdr.de>; Tue, 17 Nov 2020 18:14:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605633246;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ax224QyBMKK5UDkJFwzu69gTQE8MdX2a1bujVdy1dOs=;
	b=IzDYwCqjWsAmETpLjAzIssYre7AasRl5PasBjLmTv8/5KMrFCvGospOKuVpjQuG0sGsR8D
	ohgzvprbVryPrsKExJt+XvpxvARf4/1eIN7tz8Lcwfd5r5BYNSyoApm9V0srq/GqklKLoU
	YkIAakBoXyOFZ2Dn+YCUN1SmTSe5Pvo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-3v3DqDYVMMStTzO8xRLVQA-1; Tue, 17 Nov 2020 12:14:04 -0500
X-MC-Unique: 3v3DqDYVMMStTzO8xRLVQA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 920B06D258;
	Tue, 17 Nov 2020 17:14:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D24C15C1CF;
	Tue, 17 Nov 2020 17:13:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 61AD78C7A2;
	Tue, 17 Nov 2020 17:13:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AHHDqHs010803 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Nov 2020 12:13:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0A628110E982; Tue, 17 Nov 2020 17:13:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02E8A110E984
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 17:13:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5906B81DBF1
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 17:13:47 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-243-rivp36i5OKC8j7mLLT9Zew-1; Tue, 17 Nov 2020 12:13:42 -0500
X-MC-Unique: rivp36i5OKC8j7mLLT9Zew-1
Received: by mail-io1-f49.google.com with SMTP id j23so6048400iog.6
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 09:13:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=wTBRWu1F/sLeoCoxZUeudVu8cisaq33ZWQKZYlcPupU=;
	b=o/w2oygbHWrtGsNA5fmOlcBjZpHedwfS/mbMO7bBBGwMK1HLnMalhsZOpa+YRznf0i
	s3Tzv6eivTuT7KSP2sxkeXBPfFahP1QAFulX9YLt06ToPLkyVfbIAGQgM5bdtaAven/3
	7+RwAZ+KW7LI+AKB9yiw6YP3t1349at98Y2hJdysy4852UYOWy+UAJUSEoX5gNguYe+0
	yPPDDOyLAAQMJjTceeQ8GzRgoj0YmWZhW2H5zSSNb8NVjZLv7mSWqET7rE4z1f6eGdcF
	87SqgOwKZExPneX7kmu/MML5e/ve+ZTj+/fZTq3OXME5gw6nwvoqHVYEMl3jsT3pvc+2
	D0sw==
X-Gm-Message-State: AOAM533Upykkvr2hXHjQjIZPKoKyU/x9IL8sInrRUWUfNWr7SQl2qDwc
	gi+3+S5eYNOoE1w6WHJyDGZtOtS8KQhhb4TbjV8hh8lGDQQ9gA==
X-Google-Smtp-Source: ABdhPJykBcmgIlzdtugY/j5BumVczELhDNLaTJEZTTTcDUozGeuQ84aA6qu97BuRZmHSn9olkVwl0P3jhZr5v2MOG4o=
X-Received: by 2002:a05:6638:639:: with SMTP id
	h25mr4333151jar.71.1605633220964; 
	Tue, 17 Nov 2020 09:13:40 -0800 (PST)
MIME-Version: 1.0
References: <fea4d0e7-5caf-f5b7-cf0a-5f3b313acb3e@gmail.com>
	<alpine.NEB.2.23.451.2011150949060.18575@panix1.panix.com>
	<203c187e-eb51-f55b-17b7-2d34a6c0bbf8@gmx.net>
In-Reply-To: <203c187e-eb51-f55b-17b7-2d34a6c0bbf8@gmx.net>
Date: Tue, 17 Nov 2020 11:13:29 -0600
Message-ID: <CAGJxbF7V7Q=OJfr7ZJ3xSbROiXG0soXjB6Fm_ovaqcrDj-rVnw@mail.gmail.com>
Subject: Re: latest iso of jenux?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Try links on this thread, but I'd recommend reading the whole thread to get
user feedback on this, as some users report problems.

https://forum.audiogames.net/topic/26881/jenux-os-news-and-discussion-hub/


Devin Prater
r.d.t.prater@gmail.com


On Tue, Nov 17, 2020 at 10:54 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hi,
> the given link says 404.
> guenter
> Am 15.11.20 um 15:49 schrieb Linux for blind general discussion:
> > Try
> > https://nashcentral.duckdns.org/projects/Jenux-2020.11.12-dual.iso
> > On Sat,
> > 14 Nov 2020, Linux for blind general discussion wrote:
> >
> >> Date: Sat, 14 Nov 2020 23:19:40
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: Linux for blind general discussion <blinux-list@redhat.com>
> >> Subject: latest iso of jenux?
> >>
> >> Hello can I please get the iso to the latest jenux?
> >>
> >> Hank
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >>
> >
>
>
> --
> .
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

