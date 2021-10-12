Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6306D42A205
	for <lists+blinux-list@lfdr.de>; Tue, 12 Oct 2021 12:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634034425;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZZGWeNcg7/J2FuLl7wNT+9mIW6AB1ZO/rhYGSbCVeDg=;
	b=fdgBhs5gdc3ED88sGwgPz9LieqtbFNlKkgu+fDXJYs9HM9cwFkRxDyniZdC9VEcC1McN5Z
	YBWfGmInWHNF0IftckEEi0fYzV5ZqZJA1yl3G8Jq1XOQAQeODeZCaitVA6yJxy8G8CU59C
	+gRD9g2Ke8qkHdKdyryhk3EcsGjcn0U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-_r0lVJTBPRaKOuZUQ_mIMA-1; Tue, 12 Oct 2021 06:27:01 -0400
X-MC-Unique: _r0lVJTBPRaKOuZUQ_mIMA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3796B10A8E06;
	Tue, 12 Oct 2021 10:26:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C93A6100239F;
	Tue, 12 Oct 2021 10:26:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DFC694E58F;
	Tue, 12 Oct 2021 10:26:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CAQdo3001684 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 06:26:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D073940CFD05; Tue, 12 Oct 2021 10:26:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB3AE40CFD10
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 10:26:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1FA2802A5E
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 10:26:39 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com
	[209.85.219.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-165-8d8S2lF2NeerDZGO7SaBHw-1; Tue, 12 Oct 2021 06:26:37 -0400
X-MC-Unique: 8d8S2lF2NeerDZGO7SaBHw-1
Received: by mail-yb1-f179.google.com with SMTP id h2so45415325ybi.13
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 03:26:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=euGegHB/7T7ap0HpwPry5XIyYe7fqLShzGAER7dIqq4=;
	b=vDc41zbU97AQTzOpzTYuXUs7Kk3vk1lg0hIUiZItfXQmsUhyx8Zq966RYIQHAMpfVa
	gyFMdmLvJi6vtG9LkNGRGvNbKmco2/IkQoeiWvnm9ug0mjlB2LcGbUcRxaYcVru8nAx1
	rtD3Ha/wIALbHGKcvibPGJVl/a8VXhifsZZAti0VGtev1XcQpzvGGGJexpi4CCjsKOih
	FZ4OrXzOITHWP9sAV46XMKCW1Fqa5gebqlM5aamR0L9uittABQdlmdx1NF1hS/EZu0o+
	tg6salpxhtG8V5Qv3UrUPtjn3V0eCv7hKO7vJiz1J3zNZVot7CSVNK1gFJVC86oL56vo
	HlRw==
X-Gm-Message-State: AOAM532deyGIKnNHN16LP4gjyRd0n9b0ts2uFqhPAahZRpx7EhFkAmlw
	3Bk8dGSvNxwiXL/Cz7gH5jutkcKYrgYaOROdZ964rJO67xCriw==
X-Google-Smtp-Source: ABdhPJxWz+HbWPrHwRtoiN6jnDzU7tj6rUcnlUL09xLN99uFHlEi8r7N/yc4ZPT3CX+j6uSWK0YlfkDtlxdNAHQvvLk=
X-Received: by 2002:a25:4ec6:: with SMTP id
	c189mr28206462ybb.283.1634034396586; 
	Tue, 12 Oct 2021 03:26:36 -0700 (PDT)
MIME-Version: 1.0
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
In-Reply-To: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
Date: Tue, 12 Oct 2021 05:26:25 -0500
Message-ID: <CAGJxbF7K6xKtt5oEfU19AB46d9v1DJajG5twtjmEDA5rLcbWAw@mail.gmail.com>
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

I would recommend Fedora. It's mainstream, runs up-to-date programs, and
doesn't depend on one developer. To start Orca, just press Alt + Windows +
S. I would also go with the Fedora Mate spin, as Mate is, in my opinion, a
bit more accessible than Gnome. Do enable Assistive Technology support
after you install it.

https://spins.fedoraproject.org/mate-compiz/

Now, Accessible Coconut is good system, but it is very out of date. For a
learning system, that may be okay, except your school may require newer
packages. Do you know what distribution of Linux they're going to be using?

There is also Slint, at:

https://slint.fr/wiki/doku.php?id=en:start

But I would not call it newbie friendly, and I've had sound issues with it
the one time I tried it.

So yeah there really kinda isn't that much for blind beginner Linux users
right now. But I'd take a mainstream, well-developed distribution with
up-to-date packages any day over an out-of-date Ubuntu release.
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Mon, Oct 11, 2021 at 11:40 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hi guys,
> I was wondering if anyone had suggestions on what distro of Linux I should
> load onto a new computer? I will be using the computer for mainly school
> purposes to learn the OS.
> Any help would be greatly appreciated.
> Thanks,
>
> Ashley
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

