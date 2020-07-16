Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 31162222435
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jul 2020 15:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594907217;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ESAvisgONF0gUdHMNqUfVLf9OYGz7vdHdgl3htJ/Mjg=;
	b=Oq7CZz5TdBFnFvTJ0CL46HE3/3gjATGI8dxfHNNopezQ+3cP3uzb2Z6UrEOZb7n2a2WgW1
	xrKfg5pO3jJ+/NUeLpc+Xf/S96+UyykPYLanA/v/e40Xvbuv+Pa7cywJ4cuBZP/FkhzPJ2
	vz+8e7+YWxHqQc1ORYemOF8EGvO0vW4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-XMiLLqOIO56Gl233fO9l3Q-1; Thu, 16 Jul 2020 09:46:54 -0400
X-MC-Unique: XMiLLqOIO56Gl233fO9l3Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1D84100A8EA;
	Thu, 16 Jul 2020 13:46:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A25357B40B;
	Thu, 16 Jul 2020 13:46:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B597C96236;
	Thu, 16 Jul 2020 13:46:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06GDkX74023914 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Jul 2020 09:46:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 88F4510BBCD2; Thu, 16 Jul 2020 13:46:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8025C10BBCD1
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 13:46:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17C8C8007AC
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 13:46:31 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-62-AgLNFrXhOcejfrqqlAtKtw-1; Thu, 16 Jul 2020 09:46:28 -0400
X-MC-Unique: AgLNFrXhOcejfrqqlAtKtw-1
Received: from spot.local (spot.local [IPv6:fe80::108f:61b6:e9ea:e7ae])
	by cfcl.com (Postfix) with ESMTP id A881A117248A
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 06:46:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: blind-accessible Linux on cell phones
Message-Id: <1D064CA4-79D1-4E4D-8EBC-9ADE625C513E@cfcl.com>
Date: Thu, 16 Jul 2020 06:46:26 -0700
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 06GDkX74023914
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

Various versions of Linux are being ported to cell phones.  Although most of these projects hope to support a variety of phones in time, the PinePhone tends to be the initial target for many of them, as detailed here:

PinePhone Software Releases
https://wiki.pine64.org/index.php?title=PinePhone_Software_Releases

I'm particularly interested in:

- Manjaro (based on Arch Linux)
- Mobian (based on Debian)
- postmarketOS (based on Alpine Linux)

Is anyone else interested in the possibility of putting together a blind-accessible cell phone OS, based on one or more of these?  Of course, I'd love to hear about any existing work in this area!

-r


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

