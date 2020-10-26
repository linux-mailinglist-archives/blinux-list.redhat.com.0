Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E303E298B31
	for <lists+blinux-list@lfdr.de>; Mon, 26 Oct 2020 12:01:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603710068;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LDegk3rShnLfxK4mUgq4oAYsVCBz6ld6MkAYL7w1BuE=;
	b=hBGOteBZw6MqNRIEKDX4/sVkF3pYYkNZKOJKwlVAXJJopMnYrXM+bkH1+kfVkeFhz8BFx2
	xM+SQwxPn5SKlYos4pYuKF0sTSzvsdpMoPR765mvtqrkIwFq4PakUYGtI/fWErqd01zMp0
	HEEhAbiEK9pbrR3ArVWVddhNQMNgTVs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-RWw6rF1CMp65IaBL4bw4YQ-1; Mon, 26 Oct 2020 07:01:06 -0400
X-MC-Unique: RWw6rF1CMp65IaBL4bw4YQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4DED01009E27;
	Mon, 26 Oct 2020 11:01:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2E1060C13;
	Mon, 26 Oct 2020 11:01:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B4F792F26;
	Mon, 26 Oct 2020 11:01:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09QAtbqX011884 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Oct 2020 06:55:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 96F842166B27; Mon, 26 Oct 2020 10:55:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9200D2166B28
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 10:55:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B9D7185A78B
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 10:55:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-59-JiI__faqP7q0eSHGXOZh5w-1; Mon, 26 Oct 2020 06:55:32 -0400
X-MC-Unique: JiI__faqP7q0eSHGXOZh5w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CKWvm3YHjz10yD
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 06:55:32 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CKWvm2g2szcbc; Mon, 26 Oct 2020 06:55:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CKWvm2JLRzcbV
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 06:55:32 -0400 (EDT)
Date: Mon, 26 Oct 2020 06:55:32 -0400
To: blinux-list@redhat.com
Subject: new website old unicorn back again
Message-ID: <alpine.NEB.2.23.451.2010260654350.593@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

https://orgmode.org/
New content too.


-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

