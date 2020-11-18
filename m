Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id DE2032B735F
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 01:48:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605660508;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ffe43Uw+8425jkByYn8HFxex/DSbpXxWXZbfEgQ2DJs=;
	b=GnbCAxBJOG0EAm0z10OhkXilAb+wPO3Y6SYyw3ofiS4EC8Mc8mVs7Ebjs8MtV/ozdlrL1r
	TMDZsXJKCYUo8X2BW1QATMfBA4QQI4SV/Y8++VnkrI1FMhSOG5XX7fSnhWjqp8GlXxG0yN
	vIlYV5UC+uHIkeNFijp1C+C7POv7k1Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-3mDvTiROMFm3dXsVEay_cQ-1; Tue, 17 Nov 2020 19:48:25 -0500
X-MC-Unique: 3mDvTiROMFm3dXsVEay_cQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B6EE1882FA0;
	Wed, 18 Nov 2020 00:48:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D6B519930;
	Wed, 18 Nov 2020 00:48:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E29FA18199CD;
	Wed, 18 Nov 2020 00:48:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AI0mFi2021744 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Nov 2020 19:48:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 08EBD1148B69; Wed, 18 Nov 2020 00:48:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 053481148B68
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 00:48:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FBAA85828E
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 00:48:12 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-241-FQQJfseBP96Ehr8CbM8A3A-1; Tue, 17 Nov 2020 19:48:10 -0500
X-MC-Unique: FQQJfseBP96Ehr8CbM8A3A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CbPLK3l8Qz1MQH
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 19:48:09 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CbPLK2msszcbc; Tue, 17 Nov 2020 19:48:09 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CbPLK2LbrzcbW
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 19:48:09 -0500 (EST)
Date: Tue, 17 Nov 2020 19:48:09 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: as I suspected
In-Reply-To: <CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2011171945200.14969@panix1.panix.com>
References: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
	<CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

Not only that, if you try an install and think you found a bug somewhere
and can copy output from it and send Daniel that output and what you did
to have the bug come up if he has hardware similar to yours, you'll very
likely get a quick response with what workarounds are possible and in
one of those future isos that bug likely will be squashed by Daniel.
Jenux is definitely under active support.

On Tue, 17 Nov 2020, Linux for blind general discussion wrote:

> Date: Tue, 17 Nov 2020 19:36:15
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: as I suspected
>
> Daniel Nash, the maintainer of Jenux, is a good friend of mine and he
> always seems to make sure that things stay updated. His dedication to the
> Linux operating system and to his user base has not been equaled in the
> space of visually impaired Linux distributions, at least in my opinion.
>
> On Tue, Nov 17, 2020, 11:48 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > A new iso was released.
> > https://nashcentral.duckdns.org/projects/Jenux-2020.11.16-dual.iso
> > for Jenux.
> >
> >
> > --
> > United States has 633 Billionaires with only 10 doing any annual
> > significant giving.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

