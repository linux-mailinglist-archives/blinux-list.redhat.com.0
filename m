Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 28CBA14E759
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2020 04:11:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580440274;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BXMRV3nzf/ihQitmu6ZnRj78UvaxEj1A7oojzAIxjCk=;
	b=a8EaS4pS+icSCpN/jemZh1j4X1XwqSyoeIZjDlexX6mIhkJLpMQLYXyKHbTjnDqk2UgMed
	kH8SNI5WuL6yDW7jwsVBG8h+py/T8FcTBlK9FSnSl39+LXpHd1XanV6VCdwi0FwI+IYbJ5
	qZJTS9tx6PNpJ6jY88IKuR2wjISPEYs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-Fwy6hsrqMym9ObhycGiB3w-1; Thu, 30 Jan 2020 22:11:11 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B39B3182B8E6;
	Fri, 31 Jan 2020 03:11:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B459A863DE;
	Fri, 31 Jan 2020 03:11:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 88CF987087;
	Fri, 31 Jan 2020 03:10:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 00V3AihK019534 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 30 Jan 2020 22:10:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 26E262166B29; Fri, 31 Jan 2020 03:10:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22E602166B27
	for <blinux-list@redhat.com>; Fri, 31 Jan 2020 03:10:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0C4818AE97E
	for <blinux-list@redhat.com>; Fri, 31 Jan 2020 03:10:41 +0000 (UTC)
Received: from omta03.suddenlink.net (omta03.suddenlink.net [208.180.40.73])
	by relay.mimecast.com with ESMTP id us-mta-210-1Lsc06roPjSzZ3cAI-uj8A-1;
	Thu, 30 Jan 2020 22:10:38 -0500
Received: from wb5agz ([47.217.105.76]) by dalofep03.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20200131031037.DRRH9678.dalofep03.suddenlink.net@wb5agz>
	for <blinux-list@redhat.com>; Thu, 30 Jan 2020 21:10:37 -0600
Received: from martin by wb5agz with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>) id 1ixMhY-0001xB-U2
	for blinux-list@redhat.com; Thu, 30 Jan 2020 21:10:36 -0600
To: blinux-list@redhat.com
Subject: A Live Boot Image for the Mac that Talks
MIME-Version: 1.0
Content-ID: <7511.1580440236.1@wb5agz>
Date: Thu, 30 Jan 2020 21:10:36 -0600
Message-Id: <E1ixMhY-0001xB-U2@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep03.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Thu, 30 Jan 2020 21:10:37 -0600
X-CM-Analysis: v=2.3 cv=Ep6sUhUA c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=Jdjhy38mL1oA:10 a=7jTcn3IT1uMA:10
	a=m8o-AWmUIhJUBp6CSKMA:9 a=CjuIK1q_8ugA:10
	a=pHzHmUro8NiASowvMSCR:22 a=xoEH_sTeL_Rfw54TyV31:22
X-CM-Envelope: MS4wfK2aWH3EWLgURXk1hzpzSX+GExcn2HVsrw44jrXizM+1jxTtaF72A3nqsQV8/RrsRd4YyoyGh0zLaAB6tnnAmzDBu9d2NDScl4ZyFA0gilGXgHFhxI04
	x+k6ri50haQyw4gQwiACXzafhJN+GBnCHBmeLJt6ZOEvLWTwxjMmB0e2
X-MC-Unique: 1Lsc06roPjSzZ3cAI-uj8A-1
X-MC-Unique: Fwy6hsrqMym9ObhycGiB3w-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 00V3AihK019534
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm going round and round with my Mac right this moment
and one thing that could fix it nicely would be a Linux live boot
image that I could run on the mac and mount the main drive which,
thank every deity that exist, is not encrypted.  I was smart
enough not to fall in to that trap.

	Apple has locked down their latest update to osx and the
normal method for running it in single-user mode appears to no
longer work.

	If I could mount the system drive, I can bypass all this
securinoia and fix the problem.

Thanks for any and all constructive suggestions.

Martin McCormick


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

