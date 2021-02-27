Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 759E0326F7C
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 23:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614466772;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QR1/qyqIUui2G75BsG7uZg/ddaeb1uSPTI2HHZBnMkk=;
	b=F+s8XbyUOKoIBsUTcZUgIlWHyclV0jlikgA2ImnNyV1AlcPiH/qoeQQecMyYfohdTTe00M
	zs7oldk508Kf24WuuwzEXrODiKflhOMPQLDu8TxfMW4C6qmCbziRyY68cQnsdI4kz+TT6C
	i0XjsmbGENvOUHm+hNYceSpttOuW75U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-594-OQ30dS62MzCqpkEXkyaQBA-1; Sat, 27 Feb 2021 17:59:31 -0500
X-MC-Unique: OQ30dS62MzCqpkEXkyaQBA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 289C8C283;
	Sat, 27 Feb 2021 22:59:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A1517046A;
	Sat, 27 Feb 2021 22:59:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7627457DFA;
	Sat, 27 Feb 2021 22:59:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RMxNjr020418 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 17:59:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 966691005B66; Sat, 27 Feb 2021 22:59:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 914BF112CA3E
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:59:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB6DB185A7BC
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:59:19 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-569--d2xFaVUMoyf-kZrShoTbg-1;
	Sat, 27 Feb 2021 17:59:17 -0500
X-MC-Unique: -d2xFaVUMoyf-kZrShoTbg-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id E61E775A
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 17:59:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute2.internal (MEProxy); Sat, 27 Feb 2021 17:59:16 -0500
X-ME-Sender: <xms:w846YKL8FTBCSaPWnce6bNjHaGRaeHPGq7nKeKbyIpaMvw3Y0gUGUQ>
	<xme:w846YCI5pOOONm9gjmDp1mfHT2b-oNwvRLLS8AexRlq43eOM37RfAhOV5NNmPNSRy
	MFIINMrumMLOAi5JWE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleeggddthecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedvrdef
	rdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
	gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:w846YKs3-ZY-304Zq3PnzGuR14A5iKUkXIur0JWEYQ-z4__dSfUdDw>
	<xmx:w846YPbBpxBWP2QI_yV0s2spMk7RjJ3jqWaW_cQLukrV2zDdWIQF6g>
	<xmx:w846YBZevC5wwCRhpJkFNcXlcvq7i7Dhgq7K_iv1bOwO18GoGqv_Lg>
	<xmx:w846YKmZeIh4H1pKwaJS7FWYXSQcR2sxV0_kA6T_onTKUFK_yjmYgw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 1EAB124005D
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 17:59:15 -0500 (EST)
Date: Sat, 27 Feb 2021 14:59:13 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <Pine.LNX.4.64.2102271754020.2939382@server2.shellworld.net>
Message-ID: <a26dafa5-6c13-bc1c-4540-b417a5f6ffb5@hubert-humphrey.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<161444979750.8.5402375494901459390.4266338@simplelogin.co>
	<161446448778.8.10629460359382025123.4270314@slmail.me>
	<73c85e2-c3b5-dc82-93ac-8ec1ec176d63@hubert-humphrey.com>
	<Pine.LNX.4.64.2102271750020.2939073@server2.shellworld.net>
	<Pine.LNX.4.64.2102271754020.2939382@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

OK Karen, thanks much for your kind offer, will send to you individually. Its 
really nice to see there is interest in getting this working for us.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

