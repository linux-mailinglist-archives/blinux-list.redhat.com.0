Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D599A4079D2
	for <lists+blinux-list@lfdr.de>; Sat, 11 Sep 2021 19:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631381073;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=roNlpAAm2NlEXDS6gyV9KN2ca0pRiaAmtk762auciZ0=;
	b=Ql8vC0Bve7lRogVJwOorgj9OINU5hsz6ZqzZIFDEyHrNVm97W6D1zQJSvNX0kbmTuCp4HZ
	oxARuh7fHB6SIGnIZ1NZiaM31X6HwAkwzfdgLuWMU0CCMugUGxNF6uXn54MXVzNLxq5+/v
	SO1BpmIiI6B9ZsL0FL+3eIHyp81VyJ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-72-ghsBmkzRMD2v-DtZHbTUOQ-1; Sat, 11 Sep 2021 13:24:31 -0400
X-MC-Unique: ghsBmkzRMD2v-DtZHbTUOQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5233B1808304;
	Sat, 11 Sep 2021 17:24:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0289A5D9D3;
	Sat, 11 Sep 2021 17:24:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 639421801241;
	Sat, 11 Sep 2021 17:24:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18BHNpUR022987 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 11 Sep 2021 13:23:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EDD3A200C0D9; Sat, 11 Sep 2021 17:23:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9228201AC61
	for <blinux-list@redhat.com>; Sat, 11 Sep 2021 17:23:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 547EE185A794
	for <blinux-list@redhat.com>; Sat, 11 Sep 2021 17:23:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-517-thIsvXd_N8ufqKhJFSjltA-1; Sat, 11 Sep 2021 13:23:46 -0400
X-MC-Unique: thIsvXd_N8ufqKhJFSjltA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H6KN16gsvzPP4;
	Sat, 11 Sep 2021 13:23:45 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H6KN15sT4zcbc; Sat, 11 Sep 2021 13:23:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H6KN15Xt3zcbP;
	Sat, 11 Sep 2021 13:23:45 -0400 (EDT)
Date: Sat, 11 Sep 2021 13:23:45 -0400
To: blinux-list@redhat.com
Subject: Ostechnix: Bash Heredoc Tutorial For Beginners (fwd)
Message-ID: <alpine.NEB.2.23.451.2109111322390.22157@panix1.panix.com>
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
Cc: slint@freelists.org
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This looks like a good site for Linux tutorials for any interested.


---------- Forwarded message ----------
Date: Tue, 31 Aug 2021 06:34:57
From: dashielljude <dashielljude@gmail.com>
To: jdashiel <jdashiel@panix.com>
Subject: Ostechnix: Bash Heredoc Tutorial For Beginners

Ostechnix: Bash Heredoc Tutorial For Beginners.
https://ostechnix.com/bash-heredoc-tutorial/

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

