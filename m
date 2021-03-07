Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id C18433303D4
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 19:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615140676;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lBLs7DGf4qppJGKO9cbrwlalqy+qtykIGdprttpPV9I=;
	b=KDXXIWz11NbOh/St/Yw2EumGCNjN5/A5cPpgE/fJ+MwKKWABdVnQpLzKp01tZfo/xUYYUv
	oSWSPnY8UrOrNtd7vnxIcxnjT4e5CsOZDovFV9DfVZyIOTxiD8FL53YlahGqYMqq4ORUs1
	nxOYW3g8TuIBytJOgxgyyPPr37EoMwI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-RROnzllKM9OJnJsM5PcTZQ-1; Sun, 07 Mar 2021 13:11:14 -0500
X-MC-Unique: RROnzllKM9OJnJsM5PcTZQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2BE03101F00B;
	Sun,  7 Mar 2021 18:11:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC5D560BF1;
	Sun,  7 Mar 2021 18:11:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7FCA04EEE1;
	Sun,  7 Mar 2021 18:11:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127IB55Q013091 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 13:11:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CFB222166BA2; Sun,  7 Mar 2021 18:11:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7E982166B2D
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:11:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F2358551E2
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:11:03 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-236-t-FjwCM2MHS7cUxIQ0ulbg-1; Sun, 07 Mar 2021 13:11:01 -0500
X-MC-Unique: t-FjwCM2MHS7cUxIQ0ulbg-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 0691B5C0056
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 13:11:01 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Sun, 07 Mar 2021 13:11:01 -0500
X-ME-Sender: <xms:NBdFYBoZ-h0Vu4wUl1tjkJw9_u20aDfBMemvDEn3ww7kF5b9NGCIHQ>
	<xme:NBdFYDoo-G0WUBxdNsJ7RWUolfagDhXXwZL2PGooKgHxlALzLp36mNQvUz2NSm6ss
	f_v8xxzcjtnU3GoyeY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddutddgleelucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:NBdFYOOUpR_Zto9wlEjzoa8T2L3CGmbH7ISEVfdkBupft4ea4fJWBw>
	<xmx:NBdFYM7Ca53YEizPv7XbFSMne7sUhRdVSwwlv58xIPAj9Pt5AX-jaQ>
	<xmx:NBdFYA7KEk42JGv2AR1J8dOsgeZfXZl6WslDjlvV2oiYfDbGHNyQkA>
	<xmx:NRdFYCHN5oW0IE-3lk7PCTiEeJL8WqFz50HFLlphqpp9mdhLB7qVTg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 7E62F240054
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 13:11:00 -0500 (EST)
Date: Sun, 7 Mar 2021 10:10:59 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <c381761f-6875-fa0c-a74c-88a2414a9e9f@gmail.com>
Message-ID: <910d288-5680-e30-d865-cf43de1ce94@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks Kyle for your analysis: Neither apt or aptitude have that name. I am in 
Debian SID. Thanks in advance.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

