Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A721F3BE186
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 05:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625628562;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eBMd+ElFMDmnWrhZ65/lhe1Oiv4JUlj5xWUlwNiv0AQ=;
	b=cV+MA/9iSSkFnKeAoyGYZbNKZzQtMa09S23oEUHZPAhI4qxLiZIPvZLEMe6lje8qyf8PNF
	dkCUWBso+RKmfiB6Igrr91nAoD7Pvv6W1ED/UCCXO53/9m6VWx+UshqXLool636uiYgw4h
	tD4sgRXz39kZl0ouQFy6yS7KsQ1QRts=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-153-namVNChVOGOiwjvHbFHh2g-1; Tue, 06 Jul 2021 23:29:21 -0400
X-MC-Unique: namVNChVOGOiwjvHbFHh2g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B956C73A0;
	Wed,  7 Jul 2021 03:29:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A745E5C1D5;
	Wed,  7 Jul 2021 03:29:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B8CAC1809C99;
	Wed,  7 Jul 2021 03:29:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1673T9nU014292 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Jul 2021 23:29:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3E62520341C4; Wed,  7 Jul 2021 03:29:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A1BF20341C7
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 03:29:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5515A80158D
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 03:29:05 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-29-o3f-5lFTNRCSC5_7qYFm2A-1; Tue, 06 Jul 2021 23:29:03 -0400
X-MC-Unique: o3f-5lFTNRCSC5_7qYFm2A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GKPzL6xBczQ6X
	for <blinux-list@redhat.com>; Tue,  6 Jul 2021 23:29:02 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GKPzL6Gsjzcbc; Tue,  6 Jul 2021 23:29:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GKPzL5ynszcbP
	for <blinux-list@redhat.com>; Tue,  6 Jul 2021 23:29:02 -0400 (EDT)
Date: Tue, 6 Jul 2021 23:29:02 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Suggestions for Linux laptop
In-Reply-To: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1@yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2107062327020.29659@panix1.panix.com>
References: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1.ref@yahoo.com>
	<693C3F63-BA95-4155-BFC0-DFD43F0F1CB1@yahoo.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

you might get some alternatives from thinkpenguin.com.  If you buy a
laptop from them let them know you need it talking once unboxed where you
are at and tell them which flavor of linux you want on it and they'll be
able to help out.


On Tue, 6 Jul 2021, Linux for blind general discussion wrote:

> I will be taking a Linux administration class in the fall. I wanted to get a new laptop that I hope to use for that class. Does anyone have suggestions?
> With the research I did some possibilities were:
> system 76 Serval WS
> Purism Librem 13 laptop
> System 76 Oryx Pro laptop
> System 76 Galago Pro laptop
>
> Any help would be greatly appreciated.
>
> Ashley
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

