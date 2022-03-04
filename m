Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A429C4CD953
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 17:42:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646412144;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i/KFNYTTzuM02zUpvargdSlfCKtxmZPhuFlJFY7zdnw=;
	b=GuLXOKX1sEFg+huRyjRjiwR+TPUythO4NOfj4ckl9II1wnQbuIYNxu1z/669JvMS3qlNbi
	s+D0VZZmLcczIq1J1kIuEZwSyDSME6Lll+LRvnianX928hkdvghjk+MinpCixH6nLbHoZG
	r/4Tv77YQUez7vzc+t8hlGBgdgHsI60=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-628-7G1VNSOWPZ-VRYLmFO1qdA-1; Fri, 04 Mar 2022 11:42:19 -0500
X-MC-Unique: 7G1VNSOWPZ-VRYLmFO1qdA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 804B5824FA6;
	Fri,  4 Mar 2022 16:42:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2C828357E;
	Fri,  4 Mar 2022 16:42:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BFA411809C98;
	Fri,  4 Mar 2022 16:42:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224Gg4s6019956 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 11:42:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 35CCC1121322; Fri,  4 Mar 2022 16:42:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 30DC51121315
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 16:41:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4C83811E75
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 16:41:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-100-XDgrH4NOPJW13sR15L94jA-1; Fri, 04 Mar 2022 11:41:58 -0500
X-MC-Unique: XDgrH4NOPJW13sR15L94jA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K9DCT5Jb5zML5
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 11:41:57 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K9DCT55dyzcbc; Fri,  4 Mar 2022 11:41:57 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K9DCT4bV0zcbC
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 11:41:57 -0500 (EST)
Date: Fri, 4 Mar 2022 11:41:57 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google is nuking simple username/password sign ins?
In-Reply-To: <f49b0dd9-8fe2-9ec1-1d49-ff5ce164ded9@free2.ml>
Message-ID: <9a21f28f-c957-cb53-af3e-8c0ad9f24c5@panix.com>
References: <YiHciAX/R+L65BU3@waffles>
	<f49b0dd9-8fe2-9ec1-1d49-ff5ce164ded9@free2.ml>
MIME-Version: 1.0
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

Well, it's time to stop gmail working on the phone and to also disable it.


On Fri, 4 Mar 2022, Linux for blind general discussion wrote:

> They sent me a message like that a few months ago and terminated my
> username/password access near the end of last year. Although Thunderbird has
> no trouble signing in now, FairEmail on my phone stopped working with my Gmail
> and gave me periodic errors because I'm using their F-Droid version instead of
> the version in the Google Play Store. I haven't had any problem with my Google
> Drive access from rclone, since I'm just using the key that they tell me is
> slower, but works. Note that rclone already works with Google Drive, and there
> are two methods of access. You can either set it up through the developer
> console and use your own key, or you can use theirs, but it's said to be
> slower. Both of these options still should work. I can't speak to the
> terminal-based email, since I haven't used it in many years, but rclone is a
> definite yes. I've been using it now for Google Drive, Dropbox and NextCloud
> for a good bit and have no trouble with any of them.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

