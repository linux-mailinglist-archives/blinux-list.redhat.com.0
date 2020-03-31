Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id AA91A199C05
	for <lists+blinux-list@lfdr.de>; Tue, 31 Mar 2020 18:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585673156;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l8g1shY4Z6sh+TS+1RWvQgsjZSaRRpWSGjQ/BupaG5A=;
	b=gfHAXeHSmYeSBLWxetY2+P9kYy7f4Ht5BBDuNEfuPGdsfm3kHlzYXEeL5HQZBk7Dg1aACJ
	d7+joj/CIMa8MsK43tQag1piL21zvKxxrbQdiBL7XDKHbQ1Gyvu9mSzLnhe8J/5X/Qjwsy
	XhPecQxK8vUxWGDlnRlU3FETryidou8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-461-Gp1Kn3gXOauZDvygg1LMOA-1; Tue, 31 Mar 2020 12:45:54 -0400
X-MC-Unique: Gp1Kn3gXOauZDvygg1LMOA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A83608010FA;
	Tue, 31 Mar 2020 16:45:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 349005D9C5;
	Tue, 31 Mar 2020 16:45:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 231A3863B7;
	Tue, 31 Mar 2020 16:45:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02VGjULX024540 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 31 Mar 2020 12:45:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 62D1720230A9; Tue, 31 Mar 2020 16:45:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E84E202A942
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 16:45:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 38BB98FF670
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 16:45:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-303-Vx8i5swdMqadPk-XCNnIog-1; Tue, 31 Mar 2020 12:45:12 -0400
X-MC-Unique: Vx8i5swdMqadPk-XCNnIog-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48sFYh2xr5zslx
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 12:45:12 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48sFYh1MwNzcbc; Tue, 31 Mar 2020 12:45:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48sFYh0tHnzcbV
	for <blinux-list@redhat.com>; Tue, 31 Mar 2020 12:45:12 -0400 (EDT)
Date: Tue, 31 Mar 2020 12:45:11 -0400
To: blinux-list@redhat.com
Subject: updating perl modules
Message-ID: <alpine.NEB.2.21.2003311243230.19058@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02VGjULX024540
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

One problem is
1   Unparsable              SVN::Core                            MSCHWERN
how should that be updated?
I've tried that a few times before and found it an excellent way to get my
computers lost in space for a long time.


-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

