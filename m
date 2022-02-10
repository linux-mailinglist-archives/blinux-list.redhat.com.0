Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A604B01A8
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 01:57:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644454632;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HMFnWph+cjQXiFnc8xVoGN/NHKcwy3NwxBm43m0zgv0=;
	b=WEahtIVrnjmCeRX+T+EDXpqZtMngeAEiZdtT22fqM6IuNRVvWLFsgWpdX3H+4/I9Ctm7ha
	BNAyL/lT+Nzx8BfEorciC7wOXzEvmqT2ZZc5jotc/lnHOtS9cUsU9y63N262Y6GImVPm0p
	OdmZTcBIGgbCb3POFI7xaoT1KMGG3yw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-313-K8KxeyaoPvqtmG4mHb5z9g-1; Wed, 09 Feb 2022 19:57:08 -0500
X-MC-Unique: K8KxeyaoPvqtmG4mHb5z9g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BFD3801B2D;
	Thu, 10 Feb 2022 00:57:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 164D5108CC;
	Thu, 10 Feb 2022 00:57:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B5C34BB7C;
	Thu, 10 Feb 2022 00:56:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21A0uoxU032356 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 19:56:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C099A40CFD34; Thu, 10 Feb 2022 00:56:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC1ED40CFD31
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 00:56:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1772D1C05B10
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 00:56:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-187-U1C7gKmCMS-9iy2xu3f6LA-1; Wed, 09 Feb 2022 19:56:48 -0500
X-MC-Unique: U1C7gKmCMS-9iy2xu3f6LA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JvJH365PQz2kdg
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 19:56:47 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JvJH35vWCzcbc; Wed,  9 Feb 2022 19:56:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JvJH35TdKzcbP
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 19:56:47 -0500 (EST)
Date: Wed, 9 Feb 2022 19:56:47 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is Youtube-viewer Broken?
In-Reply-To: <d4c2176a-4263-ea61-a73-c2aa8232c2@hubert-humphrey.com>
Message-ID: <5b90d33-8263-df1f-46b7-775bead4b6b@panix.com>
References: <bd935680-f9c0-3efe-8a8-3d3bf0fee08d@hubert-humphrey.com>
	<b767e62d-8e12-46e2-b412-fc376ae8b073@slint.fr>
	<d4c2176a-4263-ea61-a73-c2aa8232c2@hubert-humphrey.com>
MIME-Version: 1.0
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

yt-dlp on slint is outdated.


On Wed, 9 Feb 2022, Linux for blind general discussion wrote:

> Hi Didier-and-thanks for your suggestions. I supposedly had pipe-viewer
> installed, but I get similar errors to ones I sent along earlier. Yes, am
> useing yt-dlp instead of youtube-dl to grab, but I  like youtube-viewer as it
> will display 50 results-and-after my suggestions has a favorites list for
> channels. At least 1 of Trizen's other projects displayed 2 consecutive groups
> of duplicate results. Youtube-viewer does the trick, but I certainly wish I
> could go far past 50 results. Thank you
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

