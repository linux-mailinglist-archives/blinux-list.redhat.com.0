Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 421AC2B6BB5
	for <lists+blinux-list@lfdr.de>; Tue, 17 Nov 2020 18:28:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605634130;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eu0MzVyhFXUsXKclgNL/DRNKJLmr7FQebAbQGQwM/KU=;
	b=UXhQ976/yAfEzWLmsAouvNsoaJWBHGS8sWQKFoQHWiZrpI2Gj53F2oRp6xbbZ8OktquRBp
	++VouDfW/3EEGx0Op498d14sYdagAA/VPQ3RSEAUBuAJ9fekGA+17Rst23AOdZFXHQQKDb
	9MC4wA++VpuVqkSdO0yL6EAYyUkRbxc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-586-ZJgSR9xsMZyM_i7dLoxjnw-1; Tue, 17 Nov 2020 12:28:48 -0500
X-MC-Unique: ZJgSR9xsMZyM_i7dLoxjnw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 87B151084D61;
	Tue, 17 Nov 2020 17:28:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A02D85C1DA;
	Tue, 17 Nov 2020 17:28:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 552C5183D020;
	Tue, 17 Nov 2020 17:28:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AHHScNJ015276 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Nov 2020 12:28:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 40717AB41A; Tue, 17 Nov 2020 17:28:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3AF07A9F00
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 17:28:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE29A811E78
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 17:28:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-258-qKoLLAW0MQew3yYA3jcmKw-1; Tue, 17 Nov 2020 12:28:33 -0500
X-MC-Unique: qKoLLAW0MQew3yYA3jcmKw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CbCb45vqgz1vPN
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 12:28:32 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CbCb455Ngzcbc; Tue, 17 Nov 2020 12:28:32 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CbCb44ddFzcbV
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 12:28:32 -0500 (EST)
Date: Tue, 17 Nov 2020 12:28:32 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: latest iso of jenux?
In-Reply-To: <203c187e-eb51-f55b-17b7-2d34a6c0bbf8@gmx.net>
Message-ID: <alpine.NEB.2.23.451.2011171225580.29345@panix1.panix.com>
References: <fea4d0e7-5caf-f5b7-cf0a-5f3b313acb3e@gmail.com>
	<alpine.NEB.2.23.451.2011150949060.18575@panix1.panix.com>
	<203c187e-eb51-f55b-17b7-2d34a6c0bbf8@gmx.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When that happens, try:
https://nashcentral.duckdns.org/projects/
Once that's been done read the page and search for Jenux.
It probably means a new iso has been made available.  When I sent that
message yesterday I had already successfully downloaded and checked the
iso in that link.

On Tue, 17 Nov 2020, Linux for blind general discussion wrote:

> Date: Tue, 17 Nov 2020 10:10:39
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: latest iso of jenux?
>
> Hi,
> the given link says 404.
> guenter
> Am 15.11.20 um 15:49 schrieb Linux for blind general discussion:
> > Try
> > https://nashcentral.duckdns.org/projects/Jenux-2020.11.12-dual.iso
> > On Sat,
> > 14 Nov 2020, Linux for blind general discussion wrote:
> >
> >> Date: Sat, 14 Nov 2020 23:19:40
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: Linux for blind general discussion <blinux-list@redhat.com>
> >> Subject: latest iso of jenux?
> >>
> >> Hello can I please get the iso to the latest jenux?
> >>
> >> Hank
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >>
> >
>
>
> --
> .
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

