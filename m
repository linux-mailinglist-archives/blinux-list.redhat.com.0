Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8731B381D00
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 07:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621142799;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+PXFEq7Sk/4k1WJu/x1FnyJj8jq3nOyxI9iyXs9i9Qs=;
	b=BBzgEWMkf+h6qC97ri+k8hlv47ufLc1eZS1DxglWjGcfYw8PE2G3mWqHYjba+OV/I9mLOu
	KDM79+LFGSO7ICGUnMD46JTGdq+q89HXq3dJ2oStLejs22wulxxTbPgAuADKP8PBGm7rCf
	/R/jLC6J+ePOgUeFCTTGFuGEyfcV2nY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-kJo9k8qdP5C4DmbBCFVHKA-1; Sun, 16 May 2021 01:26:37 -0400
X-MC-Unique: kJo9k8qdP5C4DmbBCFVHKA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30120FCA6;
	Sun, 16 May 2021 05:26:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2672E5D6D3;
	Sun, 16 May 2021 05:26:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 180CE55347;
	Sun, 16 May 2021 05:26:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G5QOVT002134 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 May 2021 01:26:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9F18B2086D0B; Sun, 16 May 2021 05:26:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A9F92026D46
	for <blinux-list@redhat.com>; Sun, 16 May 2021 05:26:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4BB33800B29
	for <blinux-list@redhat.com>; Sun, 16 May 2021 05:26:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-220-i4VVOfykMGSd7jrHrTp9VQ-1; Sun, 16 May 2021 01:26:20 -0400
X-MC-Unique: i4VVOfykMGSd7jrHrTp9VQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FjW2g44qNz2Y7M
	for <blinux-list@redhat.com>; Sun, 16 May 2021 01:26:19 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FjW2g37tWzcbc; Sun, 16 May 2021 01:26:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FjW2g2YfHzcbW
	for <blinux-list@redhat.com>; Sun, 16 May 2021 01:26:19 -0400 (EDT)
Date: Sun, 16 May 2021 01:26:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
In-Reply-To: <cf833585-fdb9-27a4-ec89-819db229e889@hubert-humphrey.com>
Message-ID: <alpine.NEB.2.23.451.2105160125570.376@panix1.panix.com>
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
	<Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
	<Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
	<ae4b711d-2c14-1bb3-f751-4ca4171277e@hubert-humphrey.com>
	<alpine.NEB.2.23.451.2105152322030.25128@panix1.panix.com>
	<cf833585-fdb9-27a4-ec89-819db229e889@hubert-humphrey.com>
MIME-Version: 1.0
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

Yes, Trizen forked pipe-viewer off straw-viewer.


On Sat, 15 May 2021, Linux for blind general discussion wrote:

> Well, last time I replied to all, it also included blind talk which I am not
> subscribed to. I just tried an apt in Debian for pipe-viewer, but no luck. Is
> pipe-viewer also from Trizen? Thanks in advance
> Chime
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

