Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E4335252312
	for <lists+blinux-list@lfdr.de>; Tue, 25 Aug 2020 23:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598392019;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FZgEVvFny2v0Tpe9imVby/Fv/2F6Hft4esLCJ2PfH0w=;
	b=bTkuSHb/eaa3XrXBXaEORN+WUnx3NuvJKnVAl/a1yTK6lXV7rF8cOK+y/GV8OeoM6J7+5e
	O+q/6WDw5Ezf5NsN3WwtV/2iqfnwZjzpOHFPEFjWmY6+cNp+nMw5wZ65rSoOLCG69L/m38
	BwMcgylJO84gqazkec9P6Sz1T/IwgUw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-544-XOCcwcJkNeedAOa3Fgi0qw-1; Tue, 25 Aug 2020 17:46:58 -0400
X-MC-Unique: XOCcwcJkNeedAOa3Fgi0qw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09EC31DDE0;
	Tue, 25 Aug 2020 21:46:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB7F360E1C;
	Tue, 25 Aug 2020 21:46:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4FF671826D2A;
	Tue, 25 Aug 2020 21:46:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07PLknlZ026028 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Aug 2020 17:46:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E63B8C68E5; Tue, 25 Aug 2020 21:46:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E033BADF82
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 21:46:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A8E2186E144
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 21:46:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-371-6ofg_AwnPuuYpYxcu5QfvA-1; Tue, 25 Aug 2020 17:46:43 -0400
X-MC-Unique: 6ofg_AwnPuuYpYxcu5QfvA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BbjHl14dDz1YY7
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 17:46:43 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BbjHl0mxqzcbY; Tue, 25 Aug 2020 17:46:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BbjHl09XCzcbW
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 17:46:42 -0400 (EDT)
Date: Tue, 25 Aug 2020 17:46:42 -0400
To: blinux-list@redhat.com
Subject: re: tried accessible coconut
Message-ID: <alpine.NEB.2.23.451.2008251743310.9959@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Mimecast-Spam-Score: 1.002999
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The problem turned out to be two monitor cables were connected to one
computer and one of those cables ought to have been connected to the
computer running accessible coconut.  Once fixed two sets of chimes played
after keying in my password and orca came on talking.  So I got a good
accessible coconut disk and a good installation.  Now let's see if my
router will accept my password.



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

