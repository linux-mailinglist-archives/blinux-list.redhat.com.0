Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id E25C9186DF7
	for <lists+blinux-list@lfdr.de>; Mon, 16 Mar 2020 15:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584370706;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UloctLe3hnsu1p/zByPERMwrv9ijbD4oysMI7XaSJzw=;
	b=XpG8qOCrgdbNjcXcWpug3YGGL9XCMcb3YDZq1PCYFc2y5YPifCYbwxyrvXGWHJJ0hzWnZl
	dOMTabhXkr+u9pI1Kh1qjiQIm8E/Az+w1OWT+fbUXaWlBa26u1m+VJl3GPkIvYhc3rXTmi
	QfypCIn1rqDSDUPxEKxLiU6oZvSDMok=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-178-B5DGmz-RNiKHNkGgWurwzg-1; Mon, 16 Mar 2020 10:58:24 -0400
X-MC-Unique: B5DGmz-RNiKHNkGgWurwzg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9ABEA8026B8;
	Mon, 16 Mar 2020 14:58:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3346A19C70;
	Mon, 16 Mar 2020 14:58:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 99BD786FE7;
	Mon, 16 Mar 2020 14:58:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02GEvwwl020815 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Mar 2020 10:57:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4DA9C124575; Mon, 16 Mar 2020 14:57:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A1C0F8A1D
	for <blinux-list@redhat.com>; Mon, 16 Mar 2020 14:57:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3755A907783
	for <blinux-list@redhat.com>; Mon, 16 Mar 2020 14:57:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-232-twxZctC1M5S9FaAUcN_BcQ-1; Mon, 16 Mar 2020 10:57:53 -0400
X-MC-Unique: twxZctC1M5S9FaAUcN_BcQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48gztm5b86z1Llc;
	Mon, 16 Mar 2020 10:57:52 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48gztm3tG6zcbc; Mon, 16 Mar 2020 10:57:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48gztm3p2szcbW;
	Mon, 16 Mar 2020 10:57:52 -0400 (EDT)
Date: Mon, 16 Mar 2020 10:57:52 -0400
To: orca-list@gnome.org
Subject: a mate install (fwd)
Message-ID: <alpine.NEB.2.21.2003161057310.4529@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02GEvwwl020815
X-loop: blinux-list@redhat.com
Cc: blinux-list@redhat.com
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



-- 


---------- Forwarded message ----------
Date: Mon, 16 Mar 2020 10:57:02
From: Jude DaShiell <jdashiel@panix.com>
To: ubuntu-accessibility@lists.ubuntu.com
Subject: a mate install

I wrote earlier about mate not bringing up help when f1 key was pressed.
That problem remains.
Something else happening is configuration somehow is locked to a slow
voice and this user normally plays with a faster voice.  By locked orca
configuration I mean you can go through all of the steps to change a
configuration setting and eventually hit ok and the change you made
doesn't take.  Is a reboot necessary to bring the change in orca active?
If that doesn't work, I'd like to know what needs to be done to get these
configurations user-modifyable.


--


-- 
Ubuntu-accessibility mailing list
Ubuntu-accessibility@lists.ubuntu.com
https://lists.ubuntu.com/mailman/listinfo/ubuntu-accessibility


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

