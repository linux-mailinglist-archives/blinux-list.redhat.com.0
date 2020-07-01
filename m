Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 0FC5B2108E0
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jul 2020 12:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593597874;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9a5RlN3Rnnl7VrUsi7oHW5ZIXi68ytRGAfapIia9e2Q=;
	b=QQy5Bp426XuqM31NVgRf8MnwkjanciPOcRm1tE9kLqrcogTCswlm38MMINPz5/P8OFOcd4
	QsU+Kx9zjDrIlTeqWCH4kmWY5RGdOGDtNTaJIRnSppRgUxpQrMc23jqCV+MDAMze8XuDOP
	lYzLmocG+GKQc6c8KgWqRGCdoo0SAO4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-202-f2mHlVOrNyefftfWZYV7qg-1; Wed, 01 Jul 2020 06:04:31 -0400
X-MC-Unique: f2mHlVOrNyefftfWZYV7qg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 200E71005513;
	Wed,  1 Jul 2020 10:04:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0291C7BEDA;
	Wed,  1 Jul 2020 10:04:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B1AE21809547;
	Wed,  1 Jul 2020 10:04:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 061A4Pi9025393 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jul 2020 06:04:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AE8A7202683D; Wed,  1 Jul 2020 10:04:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B1B62026971
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 10:04:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9082C8007B3
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 10:04:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-365-AKlO86lSMSifQf_xQrQTtw-1; Wed, 01 Jul 2020 06:04:20 -0400
X-MC-Unique: AKlO86lSMSifQf_xQrQTtw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49xcJh1FBbz18qW
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 06:04:20 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49xcJh0BPZzcbc; Wed,  1 Jul 2020 06:04:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49xcJg6qY2zcbY
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 06:04:19 -0400 (EDT)
Date: Wed, 1 Jul 2020 06:04:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: duckduckgo is now duckduckstop
In-Reply-To: <alpine.NEB.2.22.394.2007010559480.7609@panix1.panix.com>
Message-ID: <alpine.NEB.2.22.394.2007010603470.4767@panix1.panix.com>
References: <alpine.NEB.2.22.394.2007010559480.7609@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Completely different search and the same error 404.

On Wed, 1 Jul 2020, Linux for blind general discussion wrote:

> Date: Wed, 1 Jul 2020 06:02:11
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: duckduckgo is now duckduckstop
>
> It's possible to find results but not possible to access results.  I found
> a sourceforge.net article on newsboat which lite.duckduckgo.com cannot
> access.  I'll check other searches and see if they're also broken.  It
> could be duckduckgo is having some server problems this morning.
>
>
>
> --
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

