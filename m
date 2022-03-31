Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD84EDF95
	for <lists+blinux-list@lfdr.de>; Thu, 31 Mar 2022 19:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648747404;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=s4DmXQoSLWgzTAGV3hXsln86D0g4qrRMgiVpN0qnRF0=;
	b=heHM8s2aTJzY+8W/AS88hZ2G5PhgCOVG64j7o9phoehRwAkjZYbQNBe5RHKqUrMqa9oyi9
	PEb+s8OatXH4rNDHLqPRpjaPbiAfgnmvUr5A/H8AJ82m8BdyBAaYxmubJsMlzZfxF6yXqw
	ebCPj1EjuFiwflUNO9kFy1C3AMwnApc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-221-c12I3SUSML-1abgSYzZ7AQ-1; Thu, 31 Mar 2022 13:23:22 -0400
X-MC-Unique: c12I3SUSML-1abgSYzZ7AQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54F4C80159B;
	Thu, 31 Mar 2022 17:23:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2DAAC40CFD05;
	Thu, 31 Mar 2022 17:23:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A61211949761;
	Thu, 31 Mar 2022 17:23:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Generating tactile drawings.
In-Reply-To: <mailman.5787.1648731763.111206.blinux-list@redhat.com>
Date: Thu, 31 Mar 2022 10:23:11 -0700
References: <mailman.5485.1648687074.111208.blinux-list@redhat.com>
 <mailman.5718.1648699435.111201.blinux-list@redhat.com>
 <mailman.5787.1648731763.111206.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.5804.1648747398.111202.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

[ Sorry; hit send before I was really ready.  -r ]

Here's Wikipedia's take on swell paper, buried in a page on tactile graphics:

> Swell paper has a special coating of heat-reactive chemicals. Microcapsules
of alcohol implanted in the paper fracture when exposed to heat and make the
surface of the paper inflate. Placing black ink on the paper prior to a heat
process provides control over the raised surface areas. ...

-- https://en.wikipedia.org/wiki/Tactile_graphic

> ... how do you transfer images from the normal paper to the swell paper

I used a multifunction device (fax, printer, scanner) as a copying machine.
The reason I did this is that the ink in my normal printer smeared on the
rather slick surface of the swell paper.  I guess the ink in the copier comes
out a bit dryer...

FYI, any device used to process swell paper needs to have a reasonably
straight paper path, to reduce the risk of jamming, damaging the paper, etc.
Also, the ink needs to heat up significantly when exposed to the bright
light in the expansion unit.  Carbon-based inks seem to work well for this.

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

