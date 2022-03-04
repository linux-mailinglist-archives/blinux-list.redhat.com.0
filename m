Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3372F4CDC38
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 19:18:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646417932;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LRNlu8APcn46+FNDD9Ouq2PF+34/kpjWavm7iukK82M=;
	b=Jl6tlDDEM+MEmIeBEFPynJs7LAIY4JHoD8ofFV1b94IVW6GW5ugpGWoji0dbhHcAgQsegv
	1EkWBQ4psrttK8jrqNVBaELtmQePe9JY4GyF9fP/nG97KtXoXhzJr0XwTWqQ5I1bfAixjm
	O7C1QhWPZF3zg5SgUOBOZRjDbiO6yRo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-253-CnVe0yU3Pamu-MdiY4hOyQ-1; Fri, 04 Mar 2022 13:18:48 -0500
X-MC-Unique: CnVe0yU3Pamu-MdiY4hOyQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC5011006AA6;
	Fri,  4 Mar 2022 18:18:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5113841E1;
	Fri,  4 Mar 2022 18:18:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2556E1809C98;
	Fri,  4 Mar 2022 18:18:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224IIfja029028 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 13:18:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DAC9C2166BDC; Fri,  4 Mar 2022 18:18:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D62802166BCC
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:18:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF5D7811E75
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:18:38 +0000 (UTC)
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch
	[185.70.43.16]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-395-31L1KFvPPMOg9EIPvKDSzw-1; Fri, 04 Mar 2022 13:18:37 -0500
X-MC-Unique: 31L1KFvPPMOg9EIPvKDSzw-1
Date: Fri, 04 Mar 2022 18:18:31 +0000
To: blinux-list@redhat.com
Subject: Re: Snap, Flatpak and/or AppImages?
Message-ID: <f6f1709d-1e1f-6979-8036-a1a261f6f330@protonmail.com>
In-Reply-To: <81891cf3-8c55-9710-fb4f-0b172f69fa95@free2.ml>
References: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
	<01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
	<81891cf3-8c55-9710-fb4f-0b172f69fa95@free2.ml>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 224IIfja029028
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

Hi,

AppImages are by principle a very simple technology, an archive
containing the application itself as well as its dependencies, together
with a code that will mount it at launch and start the app.


It works quite well.


The reason why accessibility tends to work out of the box is caused by
the lack of sandboxing.

Unlike Flatpak or Snap, which apply security control over their
packages, AppImages don't have such mechanisms as far as I know, and
thus applications can join AT stack just fine.


Though, another thing to note here is, that if one explicitly wants to
sandbox an AppImage, the process is simplified thanks to the fact that
most of things are on single place.

In fact, firejail as an example even has a flag for sandboxing AppImages.


The simplicity of the packaging process also means, that it's not a
problem to support architectures like ARM as far as the application
itself can be compiled for it.


And, while AppImages are by design meant to be portable and easily
distributable, managing these things tends to become a drag relatively
quickly when there is more of them, so there are dedicated managers for
AppImages as well as repositories, which can automate things like
installation, uninstallation, icons creation, updates etc.


So it's possible to achieve experience similar to apt, Flatpak, Snap or
others.


Best regards


Rastislav




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

