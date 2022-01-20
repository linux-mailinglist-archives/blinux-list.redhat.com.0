Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FF649456B
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 02:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642641320;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IsLFlmCQknnoIe9fzCNKELE7D0n+szbaYZUl6Z1Jhjo=;
	b=OwIWWUoHks8rpf1psY6jHWBtAVAY0/cGwCN3V3+HoWCxqZFQnHRxkUGAq8xcsoFPVYKPNH
	QKb++XVGb/xCQGDV1M3CvmY1tcUV0eNxoYN5OIR47ayNv+5XonKWR5dk0elLoIhZ1plUp+
	O/yCFHp4teyfHoBulh4CS1u3iuL/pmM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-47-Hao3b7JeOkqZpvZvWiFbjw-1; Wed, 19 Jan 2022 20:15:16 -0500
X-MC-Unique: Hao3b7JeOkqZpvZvWiFbjw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 083EF343CA;
	Thu, 20 Jan 2022 01:15:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A5395F4E9;
	Thu, 20 Jan 2022 01:15:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC57A1809CB9;
	Thu, 20 Jan 2022 01:15:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20K1F5d6015024 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 20:15:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EF704141DC5D; Thu, 20 Jan 2022 01:15:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB8B3141DC2D
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 01:15:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9BAF628EF224
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 01:15:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-639-vcVJZEM1OC-1XKZYua_9Qg-1; Wed, 19 Jan 2022 20:15:02 -0500
X-MC-Unique: vcVJZEM1OC-1XKZYua_9Qg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JfPgp02QCzt4j
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 20:15:01 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JfPgn6kr5zcbc; Wed, 19 Jan 2022 20:15:01 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JfPgn6P59zcbP
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 20:15:01 -0500 (EST)
Date: Wed, 19 Jan 2022 20:15:01 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: cell phone industry practices
In-Reply-To: <63B06F55-87DA-433A-8D57-B216A22FC21A@icloud.com>
Message-ID: <5af06cb7-6917-44c-c326-beead692f3d9@panix.com>
References: <63f587bb-c045-5b27-4252-26d68fd14c7@panix.com>
	<63B06F55-87DA-433A-8D57-B216A22FC21A@icloud.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Bad Url, returns error 404.


On Wed, 19 Jan 2022, Linux for blind general discussion wrote:

> Hi,
> Check this out.
> The question is, is it, or can it be made accessible.
> https://www.pine64.org/pinephone
> Thanks,
> Rob
>
> > On Jan 19, 2022, at 6:40 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > Does anyone know of any cell phone ready Linux operating system that comes
> > with an accessible desktop environment that has active support
> > I'm curious about this as a result of cell phone industry practices.
> > Specifically, no last security update date and no operating system update
> > date is on packaging or listed on any of the cell phone screens.  This
> > means if your phone is compromised once these two dates have passed it's
> > time to throw your phone in the trash since even if you do a factory
> > reset, the phone can be easily compromised again.
> > Even if anything like this is available it will be a challenge to find
> > competent technical support to replace the operating system on the phone
> > and hook it up with the Linux provider's package repositories.
> >
> > ?
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

