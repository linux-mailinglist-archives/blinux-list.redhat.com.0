Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 18289206960
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 03:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592961393;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A/wrkQhBczyzZgfahD2TRnjeMfxKE1RuUeG+CTcIiKo=;
	b=Yd19RahDkB7uTq5uhuXPHtOdkbMrPyZDd0bbe9L4tntNeSRQUr7J2cIVrKNv3upW/6Ltbb
	O7in7t1bnq4mbP5GVSTNWw+KmOFujZdNbRROflOIFUvlzQ/ddaKp7JBlgWrQ9gwqL/UNEk
	VI2XEiA+0G9Lz6sjEmL0zCjs4XZfGmY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-I8Uyo-I-M0qxVWmdzdBruA-1; Tue, 23 Jun 2020 21:16:29 -0400
X-MC-Unique: I8Uyo-I-M0qxVWmdzdBruA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 078A3464;
	Wed, 24 Jun 2020 01:16:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C0B67BFEF;
	Wed, 24 Jun 2020 01:16:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 35A4A833D7;
	Wed, 24 Jun 2020 01:16:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05O1GBlx023908 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 21:16:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 614CBBBCDE; Wed, 24 Jun 2020 01:16:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D4BFBA15F
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 01:16:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 801BE858EE2
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 01:16:08 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-333-HAdw_CRCPZezdcBnRjNFog-1; Tue, 23 Jun 2020 21:16:06 -0400
X-MC-Unique: HAdw_CRCPZezdcBnRjNFog-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49s4wP5dVwzh0g
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 21:16:05 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49s4wP50FSzcbc; Tue, 23 Jun 2020 21:16:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49s4wP4V4xzcbW
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 21:16:05 -0400 (EDT)
Date: Tue, 23 Jun 2020 21:16:05 -0400
To: blinux-list@redhat.com
Subject: vlc bookmarks
Message-ID: <alpine.NEB.2.22.394.2006232114040.7776@panix1.panix.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For command line users of vlc will it be possible to pause in a rather
long mp3 file and save a bookmark at that spot then later return to that
bookmark?



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

