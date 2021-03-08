Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 247DE3306C0
	for <lists+blinux-list@lfdr.de>; Mon,  8 Mar 2021 05:06:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615176395;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XsUAwa/RnjnnhEsarZUwV/Vv7bxU7zIeiBHpESsJQs4=;
	b=DCN6adudbp5IetRC9zetNN/ZiIlKLQFCscpetzJgpE0UxVz0FmFi28Zc/zRRVw50iHVdUW
	AI4o1WrSovxIjMnnVimvfEuFsL5BAx8gkHrw4WudJPddbF5OGZq79G2sLx8jyvOV6A1pq7
	EYuqxRudpJXSizyiXbpTzg0L9zA5Dio=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-290-oegyXYywO2GdPpbo8wozfw-1; Sun, 07 Mar 2021 23:06:33 -0500
X-MC-Unique: oegyXYywO2GdPpbo8wozfw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0E4226863;
	Mon,  8 Mar 2021 04:06:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD2935E1B5;
	Mon,  8 Mar 2021 04:06:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2EB314EA32;
	Mon,  8 Mar 2021 04:06:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12846CKT006332 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 23:06:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 93BC11000DB3; Mon,  8 Mar 2021 04:06:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F308110DBA5
	for <blinux-list@redhat.com>; Mon,  8 Mar 2021 04:06:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CC638219BA
	for <blinux-list@redhat.com>; Mon,  8 Mar 2021 04:06:10 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-590-NX7mqjZaNW295Piz1P7n8Q-1; Sun, 07 Mar 2021 23:06:06 -0500
X-MC-Unique: NX7mqjZaNW295Piz1P7n8Q-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.7] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx2.simplelogin.co (Postfix) with ESMTP id 525FE5D999
	for <blinux-list@redhat.com>; Mon,  8 Mar 2021 04:00:02 +0000 (UTC)
Subject: New laptop, alt F1 is not bringing up the menus
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161517600216.7.8525648975641765810.4519676@slmail.me>
Date: Mon, 08 Mar 2021 04:00:02 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 4519676
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
I just got a new Lenovo Ideapad and installed Linux Mint MATE on it which works just fine on my HP.
But on this Lenovo, alt F1 is not pulling up my menus.
On my HP with Linux Mint, all I have to do is press alt F1 and it brings up my menus in GUI so i can get to systems or internet etc.
On this Lenovo, when I press alt F1, it just mutes the speech.
So then I have to press F1 again to unmute the speech.
 Its like the laptop completely ignores the input of alt and it only acknowledges F1 and mutes it.
To be fair, even with the copy of Windows10 that it came with, even with Windows it would not acknowledge the alt F4 to close a window.
Its like the F keys on this laptop are not doing what they are traditionally assigned to do. So now in Linux alt F1 is not pulling up my menus so I can't navigate my GUI.
I bought the laptop locally, so if this cannot be solved, then I will return it and get a different one instead.
Do any of you have issues with Lenovo Ideapads and the F keys?
Any other ways to bring up the menus in GUI?
Otherwise I'll have to return it and replace it.
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

