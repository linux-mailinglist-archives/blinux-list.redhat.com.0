Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5184BD948
	for <lists+blinux-list@lfdr.de>; Mon, 21 Feb 2022 12:00:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645441232;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GqbZqWGUmqkmoYPof1AMfSzcLWbckV1HVQNX+mYGnFA=;
	b=SBFz9rLlTTFrXcjEDS8M+EYZQRpy5XqK7HEQjXcHkBAo8k91ggwnoNjGXcedZhfolujko5
	QEpVqM027nx2z//xuyAui1jZ9r9JpndSn9y/3ZbGyVeTvjBEdWAkxBdZ8K7ORs665xHSKB
	Mw9XWqDi4qwylzu8XLmyqSjUs+eyy7Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-199-EF2gwbFZOAaH2fhoHmhFiw-1; Mon, 21 Feb 2022 06:00:29 -0500
X-MC-Unique: EF2gwbFZOAaH2fhoHmhFiw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9A428143EA;
	Mon, 21 Feb 2022 11:00:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D0F42AA9D;
	Mon, 21 Feb 2022 11:00:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 847C51809CAA;
	Mon, 21 Feb 2022 11:00:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21LB0JL5001243 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 21 Feb 2022 06:00:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D3FFB202698A; Mon, 21 Feb 2022 11:00:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD8172026985
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 11:00:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D00B93804537
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 11:00:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-548-ryyjoO6RONe_CtA8hNGdEg-1; Mon, 21 Feb 2022 06:00:15 -0500
X-MC-Unique: ryyjoO6RONe_CtA8hNGdEg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K2K8G5f5qz15D8
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 06:00:14 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K2K8G5Xx2zcbf; Mon, 21 Feb 2022 06:00:14 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K2K8G5BspzcbP
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 06:00:14 -0500 (EST)
Date: Mon, 21 Feb 2022 06:00:14 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: re: mutt or alpine
In-Reply-To: <edc2d213-6272-de0-503b-5f3082f2ab95@panix.com>
Message-ID: <13df69b9-b6e0-94a4-66b9-ba596636429d@panix.com>
References: <edc2d213-6272-de0-503b-5f3082f2ab95@panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If anyone would like, I can share my .pinerc file so you can see what I
have going with alpine.  One over-arching consideration especially with
software and more generally with operating systems is length of support.
With operating systems much email is sent on other lists whether to
upgrade or not.  Very simply, everyone has a choice of upgrade or bail.
In the case of bail, the move gets made to different operating systems.


On Mon, 21 Feb 2022, Linux for blind general discussion wrote:

> There was and maybe still is a website called dotfiles.org.  It had
> configuration files on it for various programs people found useful.  If
> the website still exists the linux blindness lists might be able to
> contribute to it but anyone who does so will help others in our community
> by commenting their configuration files appropriately perhaps with a
> #braille-friendly or #console-screen-reader-friendly or a
> #graphical-screen-reader-friendly tag.  This way we have a chance to build
> our capabilities and those that find these configuration files in the
> future.
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

