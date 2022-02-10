Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 557144B1357
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 17:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644511532;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hEtsZDr4xdgMAooCc8JFNDQAaYryciMf4NUXyv+DaQM=;
	b=SNc+9eHY95EynKt1fCb1dIsBCiDTW7KBkxz0Mke4WScwH9leDmo2AfV3dDil3zK/0vWa4A
	8K+BEkE7NWE75Gl8VzqhwvFT4jOybX+cemG3GASNMvOGEwXogJ1azE53bQhsauqQjt8cKF
	Fc3eBUeDc97TtBSZ5EyoMHZiCzCmZgU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-voizdUQJMRWC-ZADfXbhvw-1; Thu, 10 Feb 2022 11:45:29 -0500
X-MC-Unique: voizdUQJMRWC-ZADfXbhvw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB17546862;
	Thu, 10 Feb 2022 16:45:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85D18753F4;
	Thu, 10 Feb 2022 16:45:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BFA234BB7C;
	Thu, 10 Feb 2022 16:45:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AGjG0H017386 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 11:45:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 760E2141DEE8; Thu, 10 Feb 2022 16:45:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71840142B967
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 16:45:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E90DE1C07822
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 16:45:15 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-644-R1JwxrfUNHypkxnyyz0jHQ-1; Thu, 10 Feb 2022 11:45:13 -0500
X-MC-Unique: R1JwxrfUNHypkxnyyz0jHQ-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 0A92F3202095
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 11:45:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Thu, 10 Feb 2022 11:45:12 -0500
X-ME-Sender: <xms:F0EFYkCmu7J11ylhnoicQpkgzqlEnLeiz5KO7zeLGTlPvKav7JZwCw>
	<xme:F0EFYmhlObxiYQsgBHpBw4T-FOWWFI0O_kqb1JmtmYMC9ZUY3wJ8kqZOZyh5dOiZD
	vk7j4eOqknHgLWZPh8>
X-ME-Received: <xmr:F0EFYnn1y1jEHBtT3ZjvDIpEtenCDx5ts4QQl9J1x3IfJFoJ_k-9w_joVJ4tXTeuxEZgOH2zMKq4QzDLw0zZ3IlR1w94ocud_A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddriedugdeltdcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:F0EFYqym0YvWK-Qa2_myV3fnZSwMiW6W2dUoat6KXfL0s9XUk28VuA>
	<xmx:F0EFYpRD1u4G4RcSmnNVqU7ZhnJNGph6wRf11_JnPpiA8S8siGwpxg>
	<xmx:F0EFYlZaSFeZQB7T6Hk0RqzkoqcX1U9OMvcHbfSNV_vZfo0aoUICuQ>
	<xmx:F0EFYkPdLZl38AMBzCpovfWwn7HJZecGODg8CZ96w_ouFWrBrJ0mgg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 10 Feb 2022 11:45:11 -0500 (EST)
Date: Thu, 10 Feb 2022 08:45:09 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is Youtube-viewer Broken?
In-Reply-To: <c151a291-1f61-406b-e691-97588d613b9@gmail.com>
Message-ID: <14b016b9-a2bd-e632-e23e-bda41b2d0e4@hubert-humphrey.com>
References: <c151a291-1f61-406b-e691-97588d613b9@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you, I ran your command-and-its already up2date. Its youtube-viewer I'm 
having issues with.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

