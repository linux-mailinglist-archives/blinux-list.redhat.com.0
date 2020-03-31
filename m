Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id E7A97199C7B
	for <lists+blinux-list@lfdr.de>; Tue, 31 Mar 2020 19:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585674280;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MTa9W+FH186p9+VGUHBYZJ10IMH5DyihcK0eP8wb4Bk=;
	b=aINXrttDtE+wC7I/0Fmz6gF8R4FSXciSrElKW5MFkSNr46VefgRBriWxrMUnE5eDPq019j
	AmnEYTLb1RwIAmj9Ga+y/CrFpc+V90WXAAVuO8rklGQaGiDsKL7f4ExJjEPEQp+2J0Ipf8
	s2VYkNNjHZk+WmfwOUs+ZR7E9C89oPE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-132-XClfbX9hN7imhJkn1ELMoQ-1; Tue, 31 Mar 2020 13:04:38 -0400
X-MC-Unique: XClfbX9hN7imhJkn1ELMoQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34D7518AB2CF;
	Tue, 31 Mar 2020 17:04:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3832FDA0E7;
	Tue, 31 Mar 2020 17:04:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 97D4818089C8;
	Tue, 31 Mar 2020 17:04:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02VH4LWg025683 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 31 Mar 2020 13:04:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 426BFF4996; Tue, 31 Mar 2020 17:04:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EE32F4981
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 17:04:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 059128007D2
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 17:04:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-17-U-11Pw17N6WuU4ZWV6eQhQ-1; Tue, 31 Mar 2020 13:04:16 -0400
X-MC-Unique: U-11Pw17N6WuU4ZWV6eQhQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48sFzg6Rcdzv5q
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 13:04:15 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48sFzg4tXzzcbc; Tue, 31 Mar 2020 13:04:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48sFzg4GmPzcbV
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 13:04:15 -0400 (EDT)
Date: Tue, 31 Mar 2020 13:04:15 -0400
To: blinux-list@redhat.com
Subject: re: updating perl modules
Message-ID: <alpine.NEB.2.21.2003311302250.13850@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02VH4LWg025683
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Looks like Alien::SVN needs to be installed and wasn't.  At least from
doing r SVN::Core inside of cpanp that's one of the things I found out.
That job is taking a while so I backgrounded it.


--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

