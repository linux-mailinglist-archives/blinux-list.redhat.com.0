Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1485D3303FB
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 19:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615142673;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TFNL0yM7SyL0gY70YuszvKN/izd79I84lieprCykHIM=;
	b=JgrXpcNcor3rcmBnwIM42BolsIDw24coNC113uVdbsx6OaK1tVKBu/PdG69yu2TPb7g9Dx
	xt3ZDNLJgEqUnItTsIAazMWO5VNiXxdiERLwuhSS9L1mHyh/CM9zJlwfEsZdZYott/FpsQ
	ajB0FsjVfUBmMoWyyoZmsqW/YYVpnHc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-P7ztZK4SMEOXi9MspbziMg-1; Sun, 07 Mar 2021 13:44:30 -0500
X-MC-Unique: P7ztZK4SMEOXi9MspbziMg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8A3826862;
	Sun,  7 Mar 2021 18:44:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E0EE5D9C0;
	Sun,  7 Mar 2021 18:44:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5418A4EA32;
	Sun,  7 Mar 2021 18:44:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127IiK4Q016592 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 13:44:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5D70E100403A; Sun,  7 Mar 2021 18:44:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58DBA1004029
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:44:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9FC168551E2
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:44:17 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-596-3Gx0L5HOPbiUAjcpNBt4yA-1; Sun, 07 Mar 2021 13:44:15 -0500
X-MC-Unique: 3Gx0L5HOPbiUAjcpNBt4yA-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 71F5B5C00B3
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 13:44:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Sun, 07 Mar 2021 13:44:15 -0500
X-ME-Sender: <xms:_x5FYJUgLHx4Y-sERxFb8kB0iuj1VY6Q4xrcQq8JBrsCRKCSYtITpg>
	<xme:_x5FYJnZYQsWw4BsQ9dG--YPZlOS_XIffVgI-zCuwmnQrbmCnKLZMC3PG8PkaiGb7
	T6AZI2cwFaIkCtvkO8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddutddguddtiecutefuodetggdotefrod
	ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
	necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtre
	dttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuie
	ehvdefffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedv
	rdefrdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
	hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:_x5FYFZ0lQAh8ZsBd2T11RLh9NjL9ysEptGJPwyYHYBSEXj3M6otNQ>
	<xmx:_x5FYMU4U54eQ8RXs-U69PNseSzxdaESBhDO3Brcul2qyQDBXbj41Q>
	<xmx:_x5FYDnuT5ZQvSx7gCobhJpoZpz_iCkeSMTC8ZTU6X9knLb3K3X-wg>
	<xmx:_x5FYPwoxjZp1Q1P_QE06D2zQRzUmx8zfYAJkD-BLcU6ZtYebDSiuA>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 0CAF9240054
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 13:44:14 -0500 (EST)
Date: Sun, 7 Mar 2021 10:44:14 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <fef5b713-b9b9-02b8-5b12-b12c504092ff@gmail.com>
Message-ID: <56a6963d-fcb4-556c-72b3-e0af2182bc7@hubert-humphrey.com>
References: <e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
	<02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
	<Pine.LNX.4.64.2102272217290.2943945@server2.shellworld.net>
	<161511660705.7.9147299505595485066.4503426@simplelogin.co>
	<161513159250.7.551543312534109967.4507622@slmail.me>
	<161513379264.7.3425024273159773823.4508247@simplelogin.co>
	<161513774886.7.2076841472683858930.4509753@slmail.me>
	<8b45ab0e-2199-96f6-58f1-72b7c14aa680@slint.fr>
	<ec4c2a3-3c6-79e4-bf4-cfdf16e45095@hubert-humphrey.com>
	<c381761f-6875-fa0c-a74c-88a2414a9e9f@gmail.com>
	<910d288-5680-e30-d865-cf43de1ce94@hubert-humphrey.com>
	<fef5b713-b9b9-02b8-5b12-b12c504092ff@gmail.com>
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks Kyle, I must have missed the fact that I somehow already have it.
magic-wormhole is already the newest version (0.12.0-1
Thanks again
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

