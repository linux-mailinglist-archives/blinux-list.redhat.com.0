Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 63539164D8D
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 19:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582136536;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VJDHziiwEsSoeocLA8XsRSXttEG31nSgAt28s/wR994=;
	b=W+/sVsRWqoCsF0Pkcyg0YEC1TwWt2po1tmnXRE/3cZ6K7HE4RERAfl+8VTYqOf/+UoEVdz
	jDPNRAenmYNe8k6fKsQQ8oC22K/KLgTUwSnrB38tEDgc5TlSggWIrxUQLloHJ0ntYwYqKg
	EqugG9mQ828NKr93xLwLo1yr0Ukz0LQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-200-IZWfrJXrPtiKu9Vy0X40FA-1; Wed, 19 Feb 2020 13:22:13 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C08501922960;
	Wed, 19 Feb 2020 18:22:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED6E5388;
	Wed, 19 Feb 2020 18:22:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6332518089CD;
	Wed, 19 Feb 2020 18:22:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JIM0ga023337 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 13:22:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F25DB2166B2C; Wed, 19 Feb 2020 18:21:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEAEC2166B2B
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 18:21:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4FEF8007C9
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 18:21:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-58-T-HNOhlvNmWqEzE5s0J1ww-1; Wed, 19 Feb 2020 13:21:52 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48N5f75dFyz1R3P
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 13:21:51 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48N5f73zHJzcbc; Wed, 19 Feb 2020 13:21:51 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48N5f73YZtzcbV
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 13:21:51 -0500 (EST)
Date: Wed, 19 Feb 2020 13:21:51 -0500
To: blinux-list@redhat.com
Subject: tintin-alteraeon success
Message-ID: <alpine.NEB.2.21.2002191316460.244@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: T-HNOhlvNmWqEzE5s0J1ww-1
X-MC-Unique: IZWfrJXrPtiKu9Vy0X40FA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JIM0ga023337
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I managed to get background sounds playing with tintin-alteraeon.
To make that happen if you're interested try the following:
1) install tintin,
2) install sox,
3) cd /opt,
4) git clone https://github.com/lilmike/tintin-alteraeon,
5) /opt/tintin-alteraeon/contrib/tintin-alteraeon for console users, or
6) /opt/tintin-alteraeon/contrib/tintin-alteraeon.desktop for graphical
users.

Other mud sites also have sound packs and once those get downloaded
correctly you can have sounds in those muds too.


-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

