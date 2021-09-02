Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6F86A3FF525
	for <lists+blinux-list@lfdr.de>; Thu,  2 Sep 2021 22:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630615829;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rOjXlIAoBK9Egddp/7sUL+Ub6Sfc110hfO/90h8dXzI=;
	b=PnJ7jaotSYhQ2+wytIWJcofaoaMXC+aNmsOWqEGlVSS3BhdnweVosaLHS1x2C7fihoPnRP
	eQv6Bgf0RabwKXKPsaawpSqyIlmE6xWhKnoQsI/iyJcG9x1d3DGDzttEABIJjlUZjN/iW6
	VmZtJsR+md4hAayuhfOzQHfc3EiPQ3c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-12-AaZ4oIYNOu-6AxSw9g8tRw-1; Thu, 02 Sep 2021 16:50:27 -0400
X-MC-Unique: AaZ4oIYNOu-6AxSw9g8tRw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E31B618928A1;
	Thu,  2 Sep 2021 20:50:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8849779CE;
	Thu,  2 Sep 2021 20:50:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E02344A59;
	Thu,  2 Sep 2021 20:50:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 182Ko5IB008287 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Sep 2021 16:50:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2630B151138; Thu,  2 Sep 2021 20:50:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 215D5151132
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 20:50:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C498A100B8C8
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 20:50:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-430-eRYVqf-3NnS_LhnJClWNqA-1; Thu, 02 Sep 2021 16:49:59 -0400
X-MC-Unique: eRYVqf-3NnS_LhnJClWNqA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H0tN65xd5zLSK
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 16:49:58 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H0tN656VPzcbc; Thu,  2 Sep 2021 16:49:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H0tN64nKHzcbW
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 16:49:58 -0400 (EDT)
Date: Thu, 2 Sep 2021 16:49:58 -0400
To: blinux-list@redhat.com
Subject: blind-arch status
Message-ID: <alpine.NEB.2.23.451.2109021646450.28459@panix1.panix.com>
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

Nothing works after install with the version of this iso I downloaded.  If
possible could anyone with what they know to be a good version of the
blind-arch iso generate a checksum file maybe .sha512 for it and post it
on blinux-list?  I'll compare my checksum with what's posted and see if I
got a bad download that way.  I will also be able to use that checksum
file to find out when I manage to get a good download.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

