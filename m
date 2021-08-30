Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 14F4E3FAF28
	for <lists+blinux-list@lfdr.de>; Mon, 30 Aug 2021 02:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630283268;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bgjlt2vlhM1774eALLmXefGxu7Fs2UogUewsJ0fnFgU=;
	b=FWsN+4TD2xkQmXKTYj09UXspnBy/sJdeHx9GkihnBcmKmEgRZ+5O8smEqX19nzZt2qmAbo
	GKBBZXXGAKSJPMDoALVlxNKF7RoKKaaNL+Rau53JW+2uktTuKBO8/TLG/p0+yxNXHHBr38
	eb6MLftCTTZnQ6sB1/KeLLUWa0AEmjk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-545-Z1hUgBQnMUO3PDlGCmlw0g-1; Sun, 29 Aug 2021 20:27:46 -0400
X-MC-Unique: Z1hUgBQnMUO3PDlGCmlw0g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3E291853027;
	Mon, 30 Aug 2021 00:27:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56E7A5C1CF;
	Mon, 30 Aug 2021 00:27:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2B3164BB7C;
	Mon, 30 Aug 2021 00:27:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17U0RYVx028862 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 29 Aug 2021 20:27:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2481C1111C8B; Mon, 30 Aug 2021 00:27:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 208071111C89
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 00:27:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 67B60800882
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 00:27:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-506-2EGUsgo8O2esOFwxZMZvwQ-1; Sun, 29 Aug 2021 20:27:27 -0400
X-MC-Unique: 2EGUsgo8O2esOFwxZMZvwQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GyWNv49WPz48JC
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 20:27:27 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GyWNv407lzcbc; Sun, 29 Aug 2021 20:27:27 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GyWNv3y8MzcbW
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 20:27:27 -0400 (EDT)
Date: Sun, 29 Aug 2021 20:27:27 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Found this on youtube
In-Reply-To: <a3199a39-e7c7-17d6-f5d3-fc8bd1ae13b9@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108292025390.16928@panix1.panix.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
	<efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
	<alpine.NEB.2.23.451.2108290909030.12570@panix1.panix.com>
	<YSuTJ9eHEzFKdmn9@brandt-slint.localhost>
	<a3199a39-e7c7-17d6-f5d3-fc8bd1ae13b9@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Can I have a download url for blindarch?  I already downloaded ezarch but
don't know if that step was necessary.  I could put both iso's on a dvd if
that's how this works best but having sparse documentation on this doesn't
help.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

