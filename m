Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id AB6312F60C3
	for <lists+blinux-list@lfdr.de>; Thu, 14 Jan 2021 13:09:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610626149;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7JYJgmy3CkwLDHQEbAqdG0W+2cc9hosm1p/XsEEsad0=;
	b=hStqOJG2Qswhupp3bkRlgR4fess/DO5Dwv6Hd/bMAZhYGYtuOnFRMCWSzNX1ZCU9GlfzBX
	54ogA6JhyTd75dpvFpjH1K1KP5p3eWMIItnOGKL1RSeN2yeSFwcM/M1U4AtcrzVq41d5Ky
	Y06tb3te4JXkbO5CiX5Y/atzRHgG/Nw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-rtV62DhxPIKI0bNxTWXIxw-1; Thu, 14 Jan 2021 07:09:06 -0500
X-MC-Unique: rtV62DhxPIKI0bNxTWXIxw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3731310151E3;
	Thu, 14 Jan 2021 12:09:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 101805D6AD;
	Thu, 14 Jan 2021 12:08:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 959975002C;
	Thu, 14 Jan 2021 12:08:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10EC50Aj009579 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 14 Jan 2021 07:05:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 63398102044F; Thu, 14 Jan 2021 12:05:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E6621020434
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 12:04:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0683F800296
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 12:04:58 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-437-3XCw7mluPwyzjDC3xOIBtw-1; Thu, 14 Jan 2021 07:04:55 -0500
X-MC-Unique: 3XCw7mluPwyzjDC3xOIBtw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DGjfv3bHhz1dN6
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 07:04:55 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DGjfv3M6czcbc; Thu, 14 Jan 2021 07:04:55 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DGjfv3KXTzcbV
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 07:04:55 -0500 (EST)
Date: Thu, 14 Jan 2021 07:04:55 -0500
To: blinux-list@redhat.com
Subject: [arch-announce] Manual pages indexing service (fwd)
Message-ID: <alpine.NEB.2.23.451.2101140704440.12318@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"



---------- Forwarded message ----------
Date: Wed, 13 Jan 2021 21:45:21
From: "Arch Linux: Recent news updates: Sven-Hendrik Haase via arch-announce"
     <arch-announce@lists.archlinux.org>
To: arch-announce@archlinux.org
Cc: "Arch Linux: Recent news updates: Sven-Hendrik Haase"
     <arch-announce@archlinux.org>
Subject: [arch-announce] Manual pages indexing service

We are happy to announce our newest public service: A manual pages indexing site at [man.archlinux.org](https://man.archlinux.org) that publishes the man pages of all our packages and allows you to [search](https://man.archlinux.org/search) and [browse](https://man.archlinux.org/listing) them. Check out, for example, the [man page of tar](https://man.archlinux.org/man/core/tar/tar.1.en).

You can also find this service linked to in the sidebar as well as on every package detail page. Thanks to Wiki Admin [lahwaacz](https://wiki.archlinux.org/index.php/User:Lahwaacz) for developing [archmanweb](https://gitlab.archlinux.org/archlinux/archmanweb) for this purpose.

While there are other man page indexing sites out there, it is our hope that publishing man pages matching the versions of our released packages further improves Arch accessibility and documentation.

URL: https://www.archlinux.org/news/manual-pages-indexing-service/
_______________________________________________
arch-announce mailing list
arch-announce@lists.archlinux.org
https://lists.archlinux.org/listinfo/arch-announce

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

