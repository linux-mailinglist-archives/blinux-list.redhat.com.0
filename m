Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A30497044
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 06:52:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642917178;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=REyV56roJHlpA41ywgGi32KSK3gtm/2IsXnmRcGYek8=;
	b=Py7H36+8BDP3rQQYraEE/HVd3iW2fRIpLSuXRvjlw7nIi9jAPhM5Toj19ajaX9pqzMrQfz
	VsujM5he9/h6f2AZOpziElbQ3Ni6av5P9AtAzsmAZzQ7OggnWQGHJKWlwtFpnObomRF6Za
	jt8slpmvvv5ecTvg1A5XHoHtEv1UUkM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-119-SgHa0MlTNBGLxbas5I-ecA-1; Sun, 23 Jan 2022 00:52:54 -0500
X-MC-Unique: SgHa0MlTNBGLxbas5I-ecA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09A6A1853028;
	Sun, 23 Jan 2022 05:52:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B84734698E;
	Sun, 23 Jan 2022 05:52:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 26BD21809CB8;
	Sun, 23 Jan 2022 05:52:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20N5o0ix009759 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 00:50:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6E17C53DC; Sun, 23 Jan 2022 05:50:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69A5453D0
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 05:49:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DF7F38035C9
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 05:49:57 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
	(wout4-smtp.messagingengine.com [64.147.123.20]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-421-dkkaqsjFM0C9TP70Uk6DGA-1; Sun, 23 Jan 2022 00:49:55 -0500
X-MC-Unique: dkkaqsjFM0C9TP70Uk6DGA-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id D657832007CF
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 00:49:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Sun, 23 Jan 2022 00:49:53 -0500
X-ME-Sender: <xms:gezsYaMVCa-KfMUidDor7lb_vHwjkynD-a2QOwxx0hzWabXHKadfQA>
	<xme:gezsYY_EiERcIlZR-Zk1STqd-luXVJCiu9Pv0FdqczCkjlpZJo-mBAMz600PhkWC3
	-NYZM_uD22AtsjAzVw>
X-ME-Received: <xmr:gezsYRSDCDxFjGRGNLEj5tDylgX7LdjhAlPFaoQpqs47T89gNmZVcG7S8tmsUNhnhB59OJOvpiBL9U8du8wxUSDTU80flxTXuQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrvdefgdeklecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:gezsYaszt6hGe_NvN6142i_BOJCTekPugb8hKr6nvxcjs1vygZvZ4A>
	<xmx:gezsYSdmVJYnP0tcAF5vcBTjf64gaRjzOVl-IIPNNTzvUtnthcxbWQ>
	<xmx:gezsYe0kkVTL47zErsLYR6isHKuQ1e35kFWBqnhIKLFdhFJobFbvsw>
	<xmx:gezsYUpaJXEI1W6v0LpAhzx8x-6iFSdX70XG5GqTVWzngVE2mdv0lw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 23 Jan 2022 00:49:52 -0500 (EST)
Date: Sat, 22 Jan 2022 21:49:51 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: web page problem
In-Reply-To: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
Message-ID: <f7cb1031-ef34-54ca-8e60-287e8b52c616@hubert-humphrey.com>
References: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

I wonder if you could use lftp for your project?
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

