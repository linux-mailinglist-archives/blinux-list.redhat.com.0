Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD39202B23
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jun 2020 16:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592750877;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q6z+a/B2AaAsDXDGzzU+wRrje6UX8dO02LOtcBQ/tSM=;
	b=OLMzV1awwUXngs+qLEExIcxQ+9Nm0PYxjj+puU8WBA7y9E6P3FbpHL73aW5WieK5q1rYhJ
	XrDMPV/wmaQJNSHXfaLRC5Oi6OHbDgy+rrCLDBrN6T7tWSwcsISe4p/vd+aGkNyjpCxthq
	oUNohJ0GolAdQBJAjaIS2AO4j2zcSW4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-181-XWjHLCPBPaGksNTG2-Drtw-1; Sun, 21 Jun 2020 10:47:54 -0400
X-MC-Unique: XWjHLCPBPaGksNTG2-Drtw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7AE5E8014D4;
	Sun, 21 Jun 2020 14:47:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C29B27C1F5;
	Sun, 21 Jun 2020 14:47:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5910F833CE;
	Sun, 21 Jun 2020 14:47:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05LElbpW005464 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 10:47:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4925E110F0D8; Sun, 21 Jun 2020 14:47:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44D2D110F0D7
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 14:47:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B9968007C8
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 14:47:34 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-132-j5vvBD88MxeKKqgxgrATdQ-1; Sun, 21 Jun 2020 10:47:32 -0400
X-MC-Unique: j5vvBD88MxeKKqgxgrATdQ-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id 0644B100EDCE
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 07:47:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Sun, 21 Jun 2020 07:47:28 -0700
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <20200621074757.GA2690@rednote.net>
Message-Id: <9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Jun 21, 2020, at 00:47, (Janina) wrote:
> 
> ... I wonder if asking an Android phone to serve this function is
> more an academic exercise than a practical one at this point?
> 
> I say this because I'm just now in the process of buying my next
> (natively) Linux computer, and it's quite small. It comes pretty close
> to the size of an Android phone. So, I suspect it might be the easier
> path of practicality is the point. ...

There are a number of small systems showing up on the market these days.
I think this is great, but it doesn't really address the use case I have
in mind (a pocket-sized computer with instant-on capability).  The issues
include integration, cost, size, weight, and instant-on capacity.

The Intel-based systems tend to be pricier than the RasPi ones, but all
of them cost at least a few hundred dollars.  Adding an internal UPS is
going to raise that by at least another hundred dollars.  Also, someone
will have to engineer and fabricate the add-on UPS board, battery, etc.

A retired Android cell phone, in contrast, will already have a built-in
UPS and can be found for well under $100.  For a poor (e.g., third-world)
blind user, these may be critical issues.

Size and weight are also important.  The mini PC systems fit nicely on a
desktop, but none of them will fit into a normal pocket.  Carrying one
around would thus require something like a backpack.  Some users would be
OK with this, but I think most would not.

So, this is a serious practical question, rather than an academic exercise.
If we could find a way to put usable portable computers into the hands of
blind users around the world, that would be a major contribution.  Also, I
think the effort might lead to useful enhancements in at least some of the
mainstream Android distributions.

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

