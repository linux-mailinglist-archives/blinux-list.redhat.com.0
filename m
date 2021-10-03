Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0F31A420204
	for <lists+blinux-list@lfdr.de>; Sun,  3 Oct 2021 16:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633270841;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qqJEXlatNPkrCchV18wAf3Lncyi5DKQhhPaD0joomOs=;
	b=ZyGPiphuaiVgM8Y0DRiffZaZsOIoSeR05IU3czXbqBel12w3lO0zBebMQQqhZHDwcI9cKb
	74hL88dOTVfPWy5hdon+Ibqp3r+JnEy/PM+kZpvvThY62CkiOG2gIP10HUC5kM+utSldLw
	6hhSGxkQbu1x6HOZeyIdqkrYQCTrJFE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-601-xW0thViJN2-mgpFvH8pCQQ-1; Sun, 03 Oct 2021 10:20:39 -0400
X-MC-Unique: xW0thViJN2-mgpFvH8pCQQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E0CD7362F8;
	Sun,  3 Oct 2021 14:20:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1507019C59;
	Sun,  3 Oct 2021 14:20:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 995F14E58E;
	Sun,  3 Oct 2021 14:20:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 193EJqx3003462 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Oct 2021 10:19:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 014D62167D7C; Sun,  3 Oct 2021 14:19:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F09E321623A4
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 14:19:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46E7B866DF1
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 14:19:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-59--BkPKd-9M9Kj3Dqj5Xn86Q-1; Sun, 03 Oct 2021 10:19:42 -0400
X-MC-Unique: -BkPKd-9M9Kj3Dqj5Xn86Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HMmFV0QJWz4BKy
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 10:19:42 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HMmFT6brnzcbc; Sun,  3 Oct 2021 10:19:41 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HMmFT6BKhzcbW
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 10:19:41 -0400 (EDT)
Date: Sun, 3 Oct 2021 10:19:41 -0400
To: blinux-list@redhat.com
Subject: BlindArch releases
Message-ID: <alpine.NEB.2.23.451.2110031017510.12115@panix1.panix.com>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I found a release in the older releases section of the web site with a
date on it later than the latest release.  I don't know if this is because
the site was not updated but suspect so.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

