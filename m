Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 855674A6115
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 17:12:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643731923;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1vOxCMlHOYPFNP/PRkSiV+wVG9AkM08tpHcAN1/9004=;
	b=aZXztYp1GKmYwljnyX6bSPup1WuL92o6H0VnyOeChhgn0v2CsE9SER3ILGJqUQ2mQD7iL0
	10xN56Pl4XOeX1WYZoxvJMQAQwIzzo7Bf96njfQJSLy+pHWbq3zNQL7IJMmHSZoclqKlRW
	x+CZgK5pw1/SXbaJJ75HRjkhss2xM5U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-637-296c3BR8PV2xz6CNetDbsw-1; Tue, 01 Feb 2022 11:11:59 -0500
X-MC-Unique: 296c3BR8PV2xz6CNetDbsw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CBD9F86A8A1;
	Tue,  1 Feb 2022 16:11:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BBF4838C0;
	Tue,  1 Feb 2022 16:11:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 477471809C88;
	Tue,  1 Feb 2022 16:11:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211GBm3R023456 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 11:11:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 85482202660C; Tue,  1 Feb 2022 16:11:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80B55202698A
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 16:11:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E6771044560
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 16:11:40 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-17-xIKLvpEsOa2zRgjJX-Z5gw-1; Tue, 01 Feb 2022 11:11:38 -0500
X-MC-Unique: xIKLvpEsOa2zRgjJX-Z5gw-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 8D2DB32009EF
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 11:11:37 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Tue, 01 Feb 2022 11:11:37 -0500
X-ME-Sender: <xms:uFv5YSuWji3gipp5yUrY3QDFZlS79nJvU9YfyyFhvQPiJ2grs0925g>
	<xme:uFv5YXeuOoLc-cRX_BNg4nXs-9_F4_YxP4_ouV7c85vcSgef--mInOUykd0comFn0
	GJs6yiPFG6oNX94dkU>
X-ME-Received: <xmr:uFv5YdyKzyqx4F_9mOhSFnStEBTkjpnM6boRV_jWKy5LAxbku5hR1xb8jAhyyJv_tE9GQ9FBgNMlicNaISTppGWyeoxg0gy_6w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrgeefgdekhecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:uFv5YdMz08Cd9mAEf5gCBMmwKmdTQOVYX-MJlb30ufj5tTY0DBBH_g>
	<xmx:uFv5YS9nRNdH1-SWW8NH-GaEDEmVFFkxUzEpEtLfOzvl5NyLDPZl1Q>
	<xmx:uFv5YVXFDn-n6xHUPg3If0xnH-aYoZrxpHK0c0VyeGqJa5IfYnkjYQ>
	<xmx:uVv5YTKZ48sq7QYQE7jzlgxpeugXEi0wBd-wr0iK3s3uxCeT93Qj3Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Tue, 1 Feb 2022 11:11:36 -0500 (EST)
Date: Tue, 1 Feb 2022 08:11:35 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Remaining DecTalk Issues?
In-Reply-To: <e1ba6dd5-6494-5939-8abb-fd70bcb87286@linux-a11y.org>
Message-ID: <3b5986-5885-4b82-437f-e8c2d1cee655@hubert-humphrey.com>
References: <bfd3d4b4-13fe-acc4-406a-87cfae17403d@hubert-humphrey.com>
	<e1ba6dd5-6494-5939-8abb-fd70bcb87286@linux-a11y.org>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks Chris: Not only would I love to try this, but ideally it would be easier 
if I could connect with you or another Fenrir expert by phone or on Zoom. I 
know nothing about Emacs, but just running an EmacsSpeak server is what I 
wanted to try in Speakup, but either it didn't work or I didn't know what I was 
doing? Now, just as important, in Fenrir, could I run a Speakup style keyboard 
configuration? It would certainly make a possible transition easier. I mean, 
the fact of Fenrir having a pronunciation dictionary as well as an easier way 
of ajusting volume are rather apealing. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

