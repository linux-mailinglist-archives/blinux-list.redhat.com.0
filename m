Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A424B2734
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 14:32:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644586352;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PB/CR7OvaZtoRENwHwtHLhihhNYQHRAVPpvH4ugdqPA=;
	b=Ti8fSWpF+Mo+/Knzvz+SwdtIYZ2+otK81OlUI90wCGMrOZYfh8Cv2r0vuJYLEN4lHrGxjc
	lgYG7s17oxfNI+XGl2b5YvPrHEj/OPyT1TNH6QNU+ISDqUU97nQjVLpzXXLOTZl0VSVnW3
	5B0UW3cCmcRFG20pAw7QzvrBgg69rDE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-599-OcT-ZZsjMMKZPUcACXzfvQ-1; Fri, 11 Feb 2022 08:32:29 -0500
X-MC-Unique: OcT-ZZsjMMKZPUcACXzfvQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8146B1091DA2;
	Fri, 11 Feb 2022 13:32:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D0D52B4BA;
	Fri, 11 Feb 2022 13:32:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC71F180B654;
	Fri, 11 Feb 2022 13:32:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BDRqAd015219 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 08:27:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4C39E1120ABD; Fri, 11 Feb 2022 13:27:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46E001120AB8
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 13:27:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1490811E76
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 13:27:48 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-646-qLZ1D8cgN9uQZKvlfqSqrg-1; Fri, 11 Feb 2022 08:27:46 -0500
X-MC-Unique: qLZ1D8cgN9uQZKvlfqSqrg-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id B4FB03200D30
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 08:27:45 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Fri, 11 Feb 2022 08:27:45 -0500
X-ME-Sender: <xms:UGQGYtGUq4X_0hh0sAULL9O2k0KdgxEUUYJm3fUuCE1R_aeUxTirPQ>
	<xme:UGQGYiU_ZMhR8ySqdx6dir0hJ_nZyXpKFRSoYJReOoZlyFVv3jJNoSmrIefPtcGxT
	cP9ILKbw130FyEuWGU>
X-ME-Received: <xmr:UGQGYvJ45qZ6v35YS_3BMMwTpEH2QDY1Tir9QIMKNsrqzM8RogJeClkfFsNnd0aFhhKj2_PDek_VZJtpnV8UnUOOjsGYCm3vww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrieefgdehudcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:UWQGYjFXxsASoKZvQgwpSW2PHGD554f0puE3WiT9tMElaoRBvPjX9g>
	<xmx:UWQGYjXqOGJ_Zujv_qxGxyPeT3XX7knujjTOY9cunhMVfzP8MNd00Q>
	<xmx:UWQGYuPyaVTAuyx9hI7CvtBsUoTMPwyy-oZh1vs_DB0Dl615toBHzg>
	<xmx:UWQGYqBRQaOvKZetzEvOUQgWfGRwyxYKw4ivqwMsf-6t9jyFqwUV8A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Fri, 11 Feb 2022 08:27:44 -0500 (EST)
Date: Fri, 11 Feb 2022 05:27:43 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: `alpine refuses to save password
In-Reply-To: <cfbbf827-101e-d8da-78a0-68cf8daf1459@panix.com>
Message-ID: <5d3632b3-d59e-1a7f-a94-5888ce53b3e6@hubert-humphrey.com>
References: <86C89C03-04F0-4D32-B8FD-905C03AB843D@gmail.com>
	<cfbbf827-101e-d8da-78a0-68cf8daf1459@panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

In addition, why not ask in comp.mail.pine
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

