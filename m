Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 9C2B6251F31
	for <lists+blinux-list@lfdr.de>; Tue, 25 Aug 2020 20:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598381060;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f/gwAXPvrPsTt5jknUb29OcR838Aq1rim4OdySF8i3A=;
	b=C+Xar8wtN0cjYSVeQWbLf9MfvIXJZ1unUH0nrvmAebATdR+x/mXC61oYAqiJy2N2Hg1gPT
	tAUKRcPQ4m6Rx5lBdwStAE445u9Au6w0+PquPA1hmR/a9UgspJxpZltIDBhvBHr0E82VfP
	7EwZgXWRPxbu7tGiLoCoBF3Kfq2psOY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-27-jDKLf1DKPxW-YTB0bvRdYQ-1; Tue, 25 Aug 2020 14:44:18 -0400
X-MC-Unique: jDKLf1DKPxW-YTB0bvRdYQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B66A100854F;
	Tue, 25 Aug 2020 18:44:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A3D45D9D3;
	Tue, 25 Aug 2020 18:44:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 268FE668E1;
	Tue, 25 Aug 2020 18:43:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07PIhgUN005894 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Aug 2020 14:43:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 54DAD2166BB3; Tue, 25 Aug 2020 18:43:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B9232166BDD
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 18:43:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEDB5811E81
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 18:43:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-31-0x_DH6FMPz6sEqyrkeGOEw-1; Tue, 25 Aug 2020 14:43:33 -0400
X-MC-Unique: 0x_DH6FMPz6sEqyrkeGOEw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BbdDP2SqCz14mw
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 14:43:33 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BbdDP1yX8zcbY; Tue, 25 Aug 2020 14:43:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BbdDP1cVVzcbW
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 14:43:33 -0400 (EDT)
Date: Tue, 25 Aug 2020 14:43:33 -0400
To: blinux-list@redhat.com
Subject: tried accessible coconut
Message-ID: <alpine.NEB.2.23.451.2008251438480.3791@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Once I got orca talking in the installer accessible coconut appeared to
install nicely.  On first boot, I heard five grub tones and I heard my
speakers click as expected, then the rest was silence.  I tried alt-f2
orca to get a screen reader up and that didn't happen either.  I expect I
downloaded a corrupted image which didn't get me the two sets of chimes
post-install like what happened during install when accessible coconut
started for the first time.
That or maybe I have to wait a while to get the two sets of chimes before
trying anything else.  What's a reasonable time to wait?



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

