Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AFD4A3FA80F
	for <lists+blinux-list@lfdr.de>; Sun, 29 Aug 2021 02:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630197129;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=t9ZJE0WKhcjMj/l2cZXHNvzbtox050X6mOxFVFzsgpc=;
	b=eNu4djd1HQqsSsODvignYOogBRtQzNG8BWu2Vc/tRzRgd/mPJyu4kzEcs7b3uAYhc6a8OC
	pndOAkC/2qjF/yt24Nnpt0zNTr4Uq8q0ztLsP6cN2j0dOuaT+a0jwMiiQXrWrD+X6rX4I3
	rtfWc1lpqmMYs8kZz/Ko/f63VCkqrmE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-ZGdhYXzYM22KSnl0EMEK-Q-1; Sat, 28 Aug 2021 20:32:08 -0400
X-MC-Unique: ZGdhYXzYM22KSnl0EMEK-Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82FE58042E7;
	Sun, 29 Aug 2021 00:32:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C71FE60C82;
	Sun, 29 Aug 2021 00:31:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 566024BB7B;
	Sun, 29 Aug 2021 00:31:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17T0R5xW017745 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 28 Aug 2021 20:27:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C79B92162388; Sun, 29 Aug 2021 00:27:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C23E12162387
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 00:27:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BAE9A185A79C
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 00:27:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-267-mQgCq6zbOsSlsJvZP_9RHg-1; Sat, 28 Aug 2021 20:27:00 -0400
X-MC-Unique: mQgCq6zbOsSlsJvZP_9RHg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GxvQq4rDszK2g
	for <blinux-list@redhat.com>; Sat, 28 Aug 2021 20:26:59 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GxvQq497mzcbc; Sat, 28 Aug 2021 20:26:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GxvQq3pp4zcbP
	for <blinux-list@redhat.com>; Sat, 28 Aug 2021 20:26:59 -0400 (EDT)
Date: Sat, 28 Aug 2021 20:26:59 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Found this on youtube
In-Reply-To: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108282021570.9713@panix1.panix.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks for sharing that find.  I've heard about this one before but didn't
know where it lived before so wasn't able to try it.  As it turns out, I
have a spare ssd as a result of a manjaro-talking install fail so ought to
be able to try this out in a little while.  I also failed to subscribe to
the manjaro-general email list and suspect that's rather exclusive and
mostly Spanish so even if I were allowed onto that list I'd be rather
ineffective on it.


On Sat, 28 Aug 2021, Linux for blind general discussion wrote:

> Hi all,
>
> Just found this on Youtube and wondered if anyone hhas tried it.  This is a blind arch install demo on how it works.
>
> https://www.youtube.com/watch?v=72g-2fbP04w
> Matthew
>
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

