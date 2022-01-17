Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E79490475
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 09:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642409738;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iYtCxIn2vknwCulTxjs6G+9G7kH2vREUKmhKIgClcG0=;
	b=XVTCDf0WXwTEFzHlQ1/KoJlvasZxeKYhK1SNihE40DzwChqWsA0umRPamlMvxO6Y+96gDe
	XKwN0BaGUci9Yzp89bK8QfQMsQPOasQPWI1jDQYj7xt/fIT8vKcQGbRKOMKV7fgia9XqHg
	+zptQinPBFrbTxoEVFV4sVbvDMaI3z4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-ZojhHHcHOOSboQiIwyvpjQ-1; Mon, 17 Jan 2022 03:55:35 -0500
X-MC-Unique: ZojhHHcHOOSboQiIwyvpjQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C59C510151E3;
	Mon, 17 Jan 2022 08:55:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82FA14BC7E;
	Mon, 17 Jan 2022 08:55:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C0DB94BB7C;
	Mon, 17 Jan 2022 08:55:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H8sF63000557 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 Jan 2022 03:54:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 922B6492CAD; Mon, 17 Jan 2022 08:54:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D08F492CA7
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 08:54:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72D0F3C1C701
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 08:54:15 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-65-4INGgSEVOU6mOnvHw7gZkQ-1; Mon, 17 Jan 2022 03:54:13 -0500
X-MC-Unique: 4INGgSEVOU6mOnvHw7gZkQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jcm111lzNz2x4F
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:54:13 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jcm110jBCzcbc; Mon, 17 Jan 2022 03:54:13 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jcm1107kfzcbC
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:54:12 -0500 (EST)
Date: Mon, 17 Jan 2022 03:54:12 -0500
To: blinux-list@redhat.com
Subject: Endeavouros linux
Message-ID: <598363db-46ff-2573-dbc8-de12fe2c244@panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I had a throw at it earlier.  My guess is, all of the accessibility
packages like espeak and orca and dependencies need installing with the
install iso since I checked the pkglist file and found none of them listed
in that file.  I don't recommend Endeavouros as an accessible installation
for archlinux for that reason.  That's good since we have other choices
that do work.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

