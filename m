Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8EE8127B027
	for <lists+blinux-list@lfdr.de>; Mon, 28 Sep 2020 16:42:39 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601304158;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zQm15BLIPzv+u74lJjtAd6z8KRg+zikF05mLLayJX6k=;
	b=bb60AqQFPw+voin1zJ82nK7EGxabvnReiz529pyrL/W04BpBFSvvPBeGW0D1lQFtQWyxpB
	qRs1IJB+MJLT7a5yrFBFG+p+hm7ZPba/z3Ccxw5q+y77eaVk13tdniVJ/fR+tmYOGNUyYn
	SprgMzhJ/7X301czATmUjyANwEtI540=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-ryQppusJPAaaOHIRLGu_YA-1; Mon, 28 Sep 2020 10:42:35 -0400
X-MC-Unique: ryQppusJPAaaOHIRLGu_YA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A0D010309B0;
	Mon, 28 Sep 2020 14:42:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B10C777DDC;
	Mon, 28 Sep 2020 14:42:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C8DE118408A5;
	Mon, 28 Sep 2020 14:42:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08SEg6Bi008939 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Sep 2020 10:42:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 53195200A4F4; Mon, 28 Sep 2020 14:42:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E372202348E
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 14:42:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3211811E7F
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 14:42:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-41-RCNp_sZANCK0DHvARQ5OIw-1; Mon, 28 Sep 2020 10:42:00 -0400
X-MC-Unique: RCNp_sZANCK0DHvARQ5OIw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C0QFz4DjNz1hVl
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 10:41:59 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C0QFz3GrLzcbc; Mon, 28 Sep 2020 10:41:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C0QFz2qX6zcbW
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 10:41:59 -0400 (EDT)
Date: Mon, 28 Sep 2020 10:41:59 -0400
To: blinux-list@redhat.com
Subject: gentoo!
Message-ID: <alpine.NEB.2.23.451.2009281038260.10367@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I tried a gentoo install today and got as far as downloading the stage3
file.  Unfortunately, the stage3 file does not extract and both tar and
bunzip2 treat it like a red-headed stepchild.
The file extension is .tar.xz if that's any help and it's 210MB in size
though the website hosting it claims 209MB in size.
What else might I use to try to extract this file?



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

