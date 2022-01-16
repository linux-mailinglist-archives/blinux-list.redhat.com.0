Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8F248FB27
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 06:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642312608;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C08xNeUVihNFPv5Qx7z2O8IOVq3PeXNQm3jvmi7WQLg=;
	b=H4+X6Aii7xewOvAGDcW3kkNEOEgR1x//Ofz9T2vSheO6IoZxnJ7IhZs9wgsu+HpXlzTjqL
	Iwea4zgcMLCeIgCKDG30+LxwOw9Xa6RYVLl5FchpEW/aTkSfu5ehQT/yOXTbDJKbeXx15I
	DPhTyZTRXxcX3lbCXNcYyB233sLY6kE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-221-UZ0iR2eIMbW68-ulPki9nQ-1; Sun, 16 Jan 2022 00:56:45 -0500
X-MC-Unique: UZ0iR2eIMbW68-ulPki9nQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E85872F26;
	Sun, 16 Jan 2022 05:56:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A29734BC55;
	Sun, 16 Jan 2022 05:56:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 365E41809CB8;
	Sun, 16 Jan 2022 05:56:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20G5uas7025140 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 00:56:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B77D646D20D; Sun, 16 Jan 2022 05:56:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3ECD46D1EB
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 05:56:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E9C03804094
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 05:56:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-663-oFCB6RDINLW9bRiH7qYu6w-1; Sun, 16 Jan 2022 00:56:34 -0500
X-MC-Unique: oFCB6RDINLW9bRiH7qYu6w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jc46V3Xqcz3lX9
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 00:56:34 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jc46V2fk8zcbc; Sun, 16 Jan 2022 00:56:34 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jc46V2GSfzcbC
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 00:56:34 -0500 (EST)
Date: Sun, 16 Jan 2022 00:56:34 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux Mint cinnamon applications menu?
In-Reply-To: <2D4CFA3F-CF9B-42FA-997E-01F67B566200@icloud.com>
Message-ID: <e8a644ce-be91-1c7-652-6587d822d4b@panix.com>
References: <2D4CFA3F-CF9B-42FA-997E-01F67B566200@icloud.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Try super-a.  Super in this case is between the control and alt key.

On Sat, 15 Jan 2022, Linux for blind general discussion wrote:

> Dear List,
> I have another question.
> Using Linux Mint cinnamon, Pressing alt+F1 will not show the applications menu, is there another hot key?
> Thanks,
> Rob
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

