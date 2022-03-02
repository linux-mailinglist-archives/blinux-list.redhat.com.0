Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FDB4CAC32
	for <lists+blinux-list@lfdr.de>; Wed,  2 Mar 2022 18:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646242479;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gCGeVWTyQNYankhL9Ye1Ft+BiKX9Lk3Lr+oDMKmDkCA=;
	b=BRoQl9APHoOPPt16OckSkAadfOtM4NScOuDiFziL/XMVqGrmQvqawaT9BTDtA4ZxgXQf/F
	xY6ottzC+KEejXAkGAu86rD0LBL4LLeZkSk+RpeSL3sitQZiK5ySKJEIkpUx8nl+atg9Uv
	JRI+iFiMNcl5QhUkH9Rmkt5gHDP3SB0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-43-6y0WurduMPKnWFCWYq1JnQ-1; Wed, 02 Mar 2022 12:34:38 -0500
X-MC-Unique: 6y0WurduMPKnWFCWYq1JnQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBB3B1006AA5;
	Wed,  2 Mar 2022 17:34:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98EEC8000C;
	Wed,  2 Mar 2022 17:34:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 354541809C98;
	Wed,  2 Mar 2022 17:34:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 222HYI0r024108 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 2 Mar 2022 12:34:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B6FEC5E93A2; Wed,  2 Mar 2022 17:34:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B38605E939D
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 17:34:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9D0D53C163F9
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 17:34:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-624-3IXHlcxbMaGuEjhmGc8uDQ-1; Wed, 02 Mar 2022 12:34:17 -0500
X-MC-Unique: 3IXHlcxbMaGuEjhmGc8uDQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K81Sm4R6rzmNq
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 12:34:16 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K81Sm40x4zcbc; Wed,  2 Mar 2022 12:34:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K81Sm3czNzcbP
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 12:34:16 -0500 (EST)
Date: Wed, 2 Mar 2022 12:34:16 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Any progress on .pdf viewing?
In-Reply-To: <310c7b6e-47b0-d2c7-94bf-2edaad159f6e@free2.ml>
Message-ID: <47bf95e-409e-34af-d914-c7e32f6bb088@panix.com>
References: <Yh9aEWNufoEE0Bvp@waffles>
	<a35cb12d-cced-b826-a18b-715945c92717@free2.ml>
	<6eaae389-1b23-4276-5f2-91a678ef8682@panix.com>
	<CAO2sX30TQo0iAOJGSZEbZAjfKxduTbteTP5mssZGcqJ3+Em9Qw@mail.gmail.com>
	<310c7b6e-47b0-d2c7-94bf-2edaad159f6e@free2.ml>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

--raw is also deprecated now too.


On Wed, 2 Mar 2022, Linux for blind general discussion wrote:

> The default behavior I believe tries to preserve some layout or something of
> that sort, which usually doesn't make it easy to read the resulting text file.
> -raw just extracts the raw text, and is usually much easier to read.
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

