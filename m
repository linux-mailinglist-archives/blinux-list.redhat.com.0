Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D96993302E3
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 17:16:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615133789;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6xtLGNEMcrsH7FoVnPYbKnG2ubc/lw41cIqYHRaDGQE=;
	b=c2jTqTb9xsYcozxHwIME73mZ7rivazjwjAmJYqzybYLiFiQoRb6578tq4oOL/VMfd5/fIE
	n5rOJWlOgB3+LXnvKGxccvvp010R2sk64dPbj8ZY2KC3+7pZvb33uFTx0PWclRmLUznenY
	J3Tw+pK4a8QtNiUrTwLqY5O5Wv7THHY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-ZInTksDkM2ymMFKyvmIPUQ-1; Sun, 07 Mar 2021 11:16:27 -0500
X-MC-Unique: ZInTksDkM2ymMFKyvmIPUQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5DF5526863;
	Sun,  7 Mar 2021 16:16:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBB8F10016F9;
	Sun,  7 Mar 2021 16:16:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 837071809C86;
	Sun,  7 Mar 2021 16:16:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127GGFw5002019 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 11:16:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 761682166B2F; Sun,  7 Mar 2021 16:16:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 705382166B2D
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 16:16:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 374F41018AA0
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 16:16:13 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-488-2kVTeVE5Piucy9Qrgt6j3Q-1; Sun, 07 Mar 2021 11:16:10 -0500
X-MC-Unique: 2kVTeVE5Piucy9Qrgt6j3Q-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 85F815C00E1
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 11:16:10 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sun, 07 Mar 2021 11:16:10 -0500
X-ME-Sender: <xms:SvxEYBLScaQsTf6EPA2pRTKGE6FzoqnWddzUpj6MCSMMqcF8-wx2oA>
	<xme:SvxEYNK5wNO0uqUb4FcCU5kUH_ebQJk8Q_eGzq0Mz9u1KjN8uskUwMwoEndl9odEC
	ks9JzWCvrjwsMjtImo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddutddgjeeiucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:SvxEYJsi-rBMmpuK6iXJi-rqYm2VKqVmvTunBtmTd1olQ2mIDDvIEg>
	<xmx:SvxEYCZqX6tr6RL_OPEhJlmbsfLdzP9Lu6pJBzvrW9TXsWZdNUimpw>
	<xmx:SvxEYIYaSrxq-xxTeziHXc6ILocIsmTuvL4iseuVa37lJ3OChwVVWQ>
	<xmx:SvxEYBmtD_sB6RaM7LPjdTR50gi8mKk__irqd2t8zkVZj9xGSLZoqQ>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id CA37C1080059
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 11:16:09 -0500 (EST)
Date: Sun, 7 Mar 2021 08:16:08 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <161513159250.7.551543312534109967.4507622@slmail.me>
Message-ID: <86a064b0-a06f-c2dc-798a-1c3eedd453b@hubert-humphrey.com>
References: <161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
	<02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
	<Pine.LNX.4.64.2102272217290.2943945@server2.shellworld.net>
	<161511660705.7.9147299505595485066.4503426@simplelogin.co>
	<161513159250.7.551543312534109967.4507622@slmail.me>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi SL: 1 of my linux experts grabbed them-and-put them in my home directory. 
All of it are 1.5GB. If I had a place to upload to you individually or a public 
site, I would be thrilled to. Hopefully, later today another expert will be 
here, maybe we can come up with something, but SL since the way this list is 
configured, I seemingly have no way of writing you directly? Thanks so much in 
advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

