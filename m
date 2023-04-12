Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B246DFF3E
	for <lists+blinux-list@lfdr.de>; Wed, 12 Apr 2023 21:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1681329359;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wGeo+IlNNv7eu3qbWsceOnfyBABG6kaXQn5bhJr4RaE=;
	b=VBQWdft+VZjLnq7QjJR2tkGAJCNFjTYQSzarQyNQF6GgXn2KfmtIIOZembmKzjOXtQqQkW
	ndjFQ3OdN+zkhH1Ozd+YzMIVpzjRwvMx3U+GuX6urX/eWPPrWXG19mFfHgo3XCfuCW6eik
	z+HA/VT4S1rNc9I4UCEtDvwtgqV792c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-280-lKGULNVYPdSolRjPR5cbng-1; Wed, 12 Apr 2023 15:55:56 -0400
X-MC-Unique: lKGULNVYPdSolRjPR5cbng-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA55C185A78B;
	Wed, 12 Apr 2023 19:55:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B5F902166B2A;
	Wed, 12 Apr 2023 19:55:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1CC6319466DF;
	Wed, 12 Apr 2023 19:55:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: using curl or wget with NLS Bard Site
MIME-Version: 1.0
Date: Wed, 12 Apr 2023 14:52:42 -0500
Message-ID: <mailman.1533.1681329345.2632801.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <22533.1681329162.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Has anybody successfully used wget or curl to download Talking
Books from the NLS bard site?

	Both curl and wget have provisions for the user name and
password so all one really needs is path information.

	When one does this the usual way, you've got to enter the
number in to the search box, download the book and then find the
search box again for the next one if there are several.

	I've been doing unix stuff since 1989 and worked for 25
years building automation for my fellow workers so I never miss
an opportunity to be lazy.

	The first time you do something this way, it takes 4
hours but the next times take maybe 2 or 3 minutes.  It's a geek
thing, I guess.

	Many thanks.

Martin McCormick	Amateur radio WB5AGZ

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

