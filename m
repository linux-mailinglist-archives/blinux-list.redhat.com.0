Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 2EBD8212665
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jul 2020 16:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593700569;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9LcsH0TGjBsgUlzoZ0yjyfAb1BUqa883+F6w6ZTR1B0=;
	b=TCQ/UKckCpfIW6PXlDqRG5jmeyWiSMh6PdOcow/1473yR1k5MFi+niA1ahgJuZ4vTdYGCa
	c31/wVOFUfL2nNx/Prev79VI29LhG0CpND7eHKBOKmWuc5OZErN40RxANkqnc7Tg1jLqHp
	tj5HgYane0Xy692PdftbLfvAeV4T6bg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-7xewgfh4MDipeNC9OK4MuA-1; Thu, 02 Jul 2020 10:36:06 -0400
X-MC-Unique: 7xewgfh4MDipeNC9OK4MuA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D3F718FF674;
	Thu,  2 Jul 2020 14:36:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC1501A928;
	Thu,  2 Jul 2020 14:36:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 401D11809554;
	Thu,  2 Jul 2020 14:36:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 062EVan0009971 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jul 2020 10:31:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1F319207ADFE; Thu,  2 Jul 2020 14:31:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BAD520316D9
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 14:31:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ACCE418A668C
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 14:31:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-266-UyMODpYPNqmzyBeZ401f6Q-1; Thu, 02 Jul 2020 10:31:31 -0400
X-MC-Unique: UyMODpYPNqmzyBeZ401f6Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49yLBW0070zmJr
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 10:31:30 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49yLBV6NzBzcbY; Thu,  2 Jul 2020 10:31:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49yLBV5l5QzcbW
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 10:31:30 -0400 (EDT)
Date: Thu, 2 Jul 2020 10:31:30 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: duckduckgo is now duckduckstop
In-Reply-To: <Pine.LNX.4.64.2007012006530.10772@server2.shellworld.net>
Message-ID: <alpine.NEB.2.22.394.2007021029350.605@panix1.panix.com>
References: <alpine.NEB.2.22.394.2007010559480.7609@panix1.panix.com>
	<Pine.LNX.4.64.2007012006530.10772@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It was broken I'm pretty sure for all of July 1, 2020.  Why I'm pretty
sure is since duckduckgo had server resources in India and duckduckgo
can no longer operate in India.  I tried duckduckgo a couple times today
and it is now working correctly here.

On Wed, 1 Jul 2020, Linux for blind general discussion wrote:

> Date: Wed, 1 Jul 2020 20:07:52
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: duckduckgo is now duckduckstop
>
> I wonder if the issue has been corrected?
> Just visited duckduckgo in lynx, and it worked as it does normally.
>
>
>
> On Wed, 1 Jul 2020, Linux for blind general discussion wrote:
>
> > It's possible to find results but not possible to access results.  I found
> > a sourceforge.net article on newsboat which lite.duckduckgo.com cannot
> > access.  I'll check other searches and see if they're also broken.  It
> > could be duckduckgo is having some server problems this morning.
> >
> >
> >
> > --
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

