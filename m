Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id D66632108D5
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jul 2020 12:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593597755;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nmjrUb1g+CDk6LA0LPBlmEOMjBL4EY2rdlxRg0ZbI+8=;
	b=XUSsC4wuOjzTejegJrDJ+rLFUUygykiodDbNaIiyYM9XFrt7OAMCgTcVFks1i89upJ022k
	7SsinPjULkPMUpJWzlLUpB09+gXsaRvuMEK3Nb2sEuwPSphsV+fBtbU303qeS735z845xQ
	Qx4qK31PE20YrEUFWVBhXBiPIm9CXmU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-L9Lx5D0_P0WLzbw0KXutig-1; Wed, 01 Jul 2020 06:02:33 -0400
X-MC-Unique: L9Lx5D0_P0WLzbw0KXutig-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3CAA100CCC0;
	Wed,  1 Jul 2020 10:02:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36DAC90331;
	Wed,  1 Jul 2020 10:02:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC0076C9C4;
	Wed,  1 Jul 2020 10:02:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 061A2HUh025159 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jul 2020 06:02:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E213710590CA; Wed,  1 Jul 2020 10:02:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA3B11055DA9
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 10:02:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B148C924906
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 10:02:14 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-349-98ZbiRv2NC-4u6DqO_2Ptw-1; Wed, 01 Jul 2020 06:02:12 -0400
X-MC-Unique: 98ZbiRv2NC-4u6DqO_2Ptw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49xcGD26Qtz18gh
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 06:02:12 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49xcGD169Bzcbc; Wed,  1 Jul 2020 06:02:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49xcGD0dNjzcbY
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 06:02:12 -0400 (EDT)
Date: Wed, 1 Jul 2020 06:02:11 -0400
To: blinux-list@redhat.com
Subject: duckduckgo is now duckduckstop
Message-ID: <alpine.NEB.2.22.394.2007010559480.7609@panix1.panix.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It's possible to find results but not possible to access results.  I found
a sourceforge.net article on newsboat which lite.duckduckgo.com cannot
access.  I'll check other searches and see if they're also broken.  It
could be duckduckgo is having some server problems this morning.



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

