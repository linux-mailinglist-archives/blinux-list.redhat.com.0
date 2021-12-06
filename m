Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0954690E1
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 08:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638776428;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ecsy5fse7WdPVMwRs9G4EDVQNq8MCAxDsZdSrBlwMJI=;
	b=LjEttbmmisZtqlKPTRLGhsvmbvETxgZCj2/rb0mUyVZhnpRK6Dn0NLu/RIaGPolq0GH57b
	qpOo8W7drLb9Nr9wg58gipT2Xeh8FUlk/w2J2YS54NUuwe34Ff9OVveHd9aWmIXDDR4kzB
	CBV7QAxF+xymhSRg1jFXQuYFRCu6ZNQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-ET2k0FONMaqEhIpo2yriDg-1; Mon, 06 Dec 2021 02:40:24 -0500
X-MC-Unique: ET2k0FONMaqEhIpo2yriDg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6FE018C89CC;
	Mon,  6 Dec 2021 07:40:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 431CE5DF2B;
	Mon,  6 Dec 2021 07:40:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A73ED4BB7B;
	Mon,  6 Dec 2021 07:40:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B67e9Ll008236 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 02:40:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A6BAE4047279; Mon,  6 Dec 2021 07:40:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2B224047272
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 07:40:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 808101C03360
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 07:40:09 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-479-zYm0h0X_ORiApwYTC0GPig-1; Mon, 06 Dec 2021 02:40:07 -0500
X-MC-Unique: zYm0h0X_ORiApwYTC0GPig-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx004
	[212.227.17.184]) with ESMTPSA (Nemesis) id 1MhU9Z-1mPSbs3mvT-00eh77
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 08:35:04 +0100
Message-ID: <20211206.073543.686.4@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Looking for a cli audio player
Date: Mon, 06 Dec 2021 01:35:43 -0600
MIME-Version: 1.0
In-Reply-To: <c5973fa8-6790-053c-086a-f6137eb01452@gmail.com>
References: <c5973fa8-6790-053c-086a-f6137eb01452@gmail.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Provags-ID: V03:K1:SjCTTFwQer7BrZQqzlEyLk5T4BaKencnxEbm4CqpnTs/Ij1SesG
	fmyCfBETmUnQllZh36OwjaxQtC+oTGIjVYvHeK3/iqtthJZU0zttV1RPKI9rxWQT4sUTQiR
	B75wQWtDvsVThRniW2D4VTpzR76LMoWvOAH4PadP1YJqEmJFEs2UoKAaqthUALamGtJZLxA
	mEMYefN+WmGP6c21SnHiA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gGJ4lTuRPxw=:8JU+20GL0xfLFQGUD4sA4N
	AcjkidvRmDtXk4vkyDPPnbkoGWjjSTDSR89QEFIKYdSODUbFvxCM6JB1ub46T6k8IoPUrpnYP
	6sYBE4G3F5BneKnsdYf/x8pOcy6Z1+0nfvkU2oMv9g/68rpyop5q7BbK0hO174z4O/aLyip31
	HQcLJIAS7teozNDtjEKfYNVlTXEMagld0/nRXAeFc4yokFQgZA91R6dm7E89hQWgrRYqcGDmO
	P3EpsArB3Z0UOa6BD9aWaY2oHAssr/7ClFnr/rxYJbEVAOgYYsLYf83x3BvAWebXQdtpcGNtP
	jsvKFYqbwZQg9VnxppawP3bS2fVJf9OPho9QnrJCQGR2gmWG6nyZgeq8CEcsgmvyShF6TFs9W
	ZN1FS9JyLQThY0CFl/xlGqy6cs5dlisFV60G2j8XFmI4v00zK90e2ZT/YcB/RrQLMndnJtX2Q
	G4WS94DF0tvRNB5EtvbrGYdIZ+mN2qnlEsXhQNsgebcd1tnFTJgybpxU7+RTCvDwukE7wGkqV
	8yySyqEsQ7CgAC/XBmKOiKCEz61YUMfDdGRHEKmOZh+vlDYYkPtmxjh/P3O2dVZkg5Afl8sOX
	SwzERmBNWUW6MedInJv9+ME6Y9Sj7bqziyKFsgZPNLm4EAcALt0xYi1Inv/3g3Kk10HNll/j+
	YKNKa9qRFFkpQk+tOc4uDc9/L/v9F7DYQu9sS0uUpwrAwT0qjvy7CTqZ2/OnY7gzNpf7II3GX
	v+4txtPPelhNy+dWO4uBnBEYP07IgbYcP7RAnQegnhnz5/Q122qRcxdznxwzEeyxI8baQwTXZ
	TnTuX0nUJqkIr3UwQnz+pGzpdTgbh3Z08PzBa3W1wz7aOkhS799i5DIhd1CD5JFwSTWyZdgSw
	en7zuAxM9er1RYxeVqkcS35d/ThfgaEmB0qTiHvr41wytIOMV/PW4QxUUeYKW75lP9pHzkR3b
	IqxbvSLDT/mus1tynVyEK8ah/TJUypnztU/sGZQoLBVsSJqykgNoj5rS/Ha3NxBhiPaEstfYa
	5JA8qOHHpATgca2oz1nHOKqvU7dIo8eWKkCAXaO6lqx5xYYEOMvU9wc6D5jk5f2+lmefeFt19
	5gyZYSZpFlBTDU=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B67e9Ll008236
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Mpv does what you want. To have it save your position on exit, hit shift q.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <Blinux-list@redhat.com>
Date: Mon, 6 Dec 2021 09:18:39 +0200
Subject: Looking for a cli audio player

> Hi all,
>
>
> I am looking for a cli audio player that can and will do:
>
>
> 1. Play .m3u playlists
>
> 2. Is able to save your place in the playlists and continue where you
> left off.
>
>
> Basically what I'm looking for is something that can play my podcasts
> that I've made in to playlists as follows
>
>
> $ ls -1v |grep .mp3 > /tmp/1.m3u && mv /tmp/1.m3u .
>
>
> Such a player would also logically be able to play Audio books.
>
>
> If anyone can help here, I'd be very appreciative.
>
> --
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from Slint Linux using Thunderbird
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

