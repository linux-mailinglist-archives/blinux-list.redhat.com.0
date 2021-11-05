Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDAD446840
	for <lists+blinux-list@lfdr.de>; Fri,  5 Nov 2021 19:03:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636135426;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zFVF+dF3gVvw19W/205O/tCErBakVcmJDL8bJ8YBQQs=;
	b=h2vjLdICoZHwo4PEIEpHnfgxGtui7nGlQoXLaUC89ZM8l6Ds3JdPz4OOL7WI12rp1yLpiM
	Vr33Lazxm0+FG/wwYwirONbrxfc9FPwVl5TllK52Ds/C9a17jv8tF6pe629QWHPZA+JKHS
	46SoFooQZFQh5S7d5dmdrNWg9MBmy98=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-599-O82Hbs25OkGEEvzWtgIrxw-1; Fri, 05 Nov 2021 14:03:44 -0400
X-MC-Unique: O82Hbs25OkGEEvzWtgIrxw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D904710168CC;
	Fri,  5 Nov 2021 18:03:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53E331037F59;
	Fri,  5 Nov 2021 18:03:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0E2304EA29;
	Fri,  5 Nov 2021 18:03:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A5I3RaW010510 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Nov 2021 14:03:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 748501121319; Fri,  5 Nov 2021 18:03:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70C991121315
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 18:03:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 94C0085A5BB
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 18:03:24 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-290-txMzzeGqNSGKqQOYYMKi7Q-1;
	Fri, 05 Nov 2021 14:03:22 -0400
X-MC-Unique: txMzzeGqNSGKqQOYYMKi7Q-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id D270D3201D2D
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 14:03:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute4.internal (MEProxy); Fri, 05 Nov 2021 14:03:22 -0400
X-ME-Sender: <xms:6HGFYR7Tg9L-8B919Js29tVAThhQby6Amm2lCYAn2uNzBhJOILNnWA>
	<xme:6HGFYe7za_3QmMiSuH4vCjB4kFm4ZyMJZtJejnmfxCrOV4s_ZQs_vOMda0zc3d4LJ
	G-AO3EZbJwLX3M9c_I>
X-ME-Received: <xmr:6HGFYYcI5x4h0FbKSRaRwAuDBvreE3mXySaEH7_NtEKSPu4DHiOev3fOoApyZchhMZ-FCQpgdYmNN1CcaoLa2wTVcSRV7tv1aA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrtdeigddutdehucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeeuhedukeevlefgudevke
	euieehfeetvdfgtddtheduleeuueeujedvkedugfejheenucffohhmrghinhepohhrrghl
	uhigrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
	homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:6HGFYaJXX-1CI10mnhD5WMeDYmNcN9B1EbLAbwxFGNJ0i1-ohVBGFQ>
	<xmx:6HGFYVKg7zv0inN7U1qbo9RXWIivXR1EGe_MA2CW7J4cZRLaohBiNg>
	<xmx:6HGFYTyLjzcsAElIeTuEK9vepFuUXUuGPeKU3ju7RknKB62waN_HGA>
	<xmx:6XGFYYl2lToKlhoXD_jp9hepEE0xW8lJnn-n9rBHIxmzE5-vHDJx7w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Fri, 5 Nov 2021 14:03:20 -0400 (EDT)
Date: Fri, 5 Nov 2021 11:03:19 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to get speech in a console session?
In-Reply-To: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
Message-ID: <ca746c64-c6cd-4826-8cbc-9526a38cd58@hubert-humphrey.com>
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, here are a couple of suggestions along with an opinion. You could 
probably run an
sudo apt install espeakup
or espeak
While I am not fond of those voices, you could purchase much better quality 
voices from Voxin from
https://www.oralux.org
For the IBM TTS its only $5  but the newer imbeded voices are more. I must 
confess, while in Slint, it was a bit easier getting those newer voices. In 
Debian, its easier to use "voxinup" to switch from an espeak to voxin, but 
newer voxin use "speechd-up" I understand that in both Debian-and-Slint, trying 
Fenrar may make some of this process easier. Best of luck
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

