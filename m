Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECDB49714D
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 12:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642937925;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8DxQffVzdk6GbDnWRT1n/W5m9BpO5H/wp/1PG7zH8xc=;
	b=QJ91l30b5j8gfAKRhlDhTRa0h7mKkQ6zrF7d+1eFyEwZF3V8WOLamQmqhccue8q7/SOjSn
	2xEbAK2b2dr1Lafxo/57k6qSbnHKpEadrg1Npen6WUnozRGw1XwS5Ha367+3AtJ4oQSpPA
	wssVKuF5fluoi5Js19Bv4dLZIt9DpPU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-153-q67ZDzUFNeiEwjmA_y04IQ-1; Sun, 23 Jan 2022 06:38:41 -0500
X-MC-Unique: q67ZDzUFNeiEwjmA_y04IQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E01A8143EB;
	Sun, 23 Jan 2022 11:38:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F00F7D710;
	Sun, 23 Jan 2022 11:38:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 784291809CB9;
	Sun, 23 Jan 2022 11:38:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NBbme3030931 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 06:37:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A458D1457F15; Sun, 23 Jan 2022 11:37:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0BF71457F14
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 11:37:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88D842A38D19
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 11:37:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-649-dPDSpa_mPuKZfZjENPzNQw-1; Sun, 23 Jan 2022 06:37:46 -0500
X-MC-Unique: dPDSpa_mPuKZfZjENPzNQw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JhWLy32FgzQjc
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 06:37:46 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JhWLy2Gqbzcbc; Sun, 23 Jan 2022 06:37:46 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JhWLy1sXNzcbC
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 06:37:46 -0500 (EST)
Date: Sun, 23 Jan 2022 06:37:46 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: web page problem
In-Reply-To: <alpine.DEB.2.21.2201231136070.9928@nkl.local>
Message-ID: <2bbfbfc9-f8d3-9c36-5b5-2de9e3f2fb3e@panix.com>
References: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
	<alpine.DEB.2.21.2201231136070.9928@nkl.local>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I used wget -Abc
https://nashcentral.duckdns.org/projects/Jenux-????.??.??-dual.iso
and got an error 404 for my efforts.


On Sun, 23 Jan 2022, Linux for blind general discussion wrote:

> Hi
>
> If the file is listed in some html file you can use wget with
> -A
> or
> --accept-regex
> parameters if there is certain pattern to recognize the file.
>
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

