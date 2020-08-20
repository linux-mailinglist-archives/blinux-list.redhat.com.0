Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 2DCE124C742
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 23:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597959880;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+OMp1Fv3/9JsRskHpcLhtE70nYmi2oDuNnnNP3Jtr2M=;
	b=B1jfyfxzSkik5FFp1Fn0k1nl/z2s/uJaewH3/k7Ip5fLWqIbCXzeYZvoCcNuWKpYsE9jwU
	WIo0H98DZlgV/TMh6vMuGAaTXq3Sx4NdYzdM8D9ZzIFmXYixfJGf1XuNXTYiXy2vY54Q4o
	AH1p3O+WfNSpfi/GdezqUlj+7eFVZH8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-SFXycW8SOQ6XtS5AQzXiCg-1; Thu, 20 Aug 2020 17:44:37 -0400
X-MC-Unique: SFXycW8SOQ6XtS5AQzXiCg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E22981885D83;
	Thu, 20 Aug 2020 21:44:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3C6A19931;
	Thu, 20 Aug 2020 21:44:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A9DFE183D022;
	Thu, 20 Aug 2020 21:44:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KLiKeu023859 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 17:44:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B37512017F02; Thu, 20 Aug 2020 21:44:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF20D2016F2C
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 21:44:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8B1D98EDF10
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 21:44:18 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-225-il_QM3vnN5GYmNN89a9Ojg-1;
	Thu, 20 Aug 2020 17:44:16 -0400
X-MC-Unique: il_QM3vnN5GYmNN89a9Ojg-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 194BE804
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 17:44:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Thu, 20 Aug 2020 17:44:15 -0400
X-ME-Sender: <xms:ru4-X55LM9uoqhEVYISoEJMKM-r3RDWgOvKZxCW9hDO3534aZ_eoMQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudduuddgtddvucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhffgggtgesthdtre
	dttdervdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
	qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepfeduvdduvdevffefve
	egjeffgffgieeigfdtuefghefgjeehtdeilefhueelleffnecukfhppedutdegrddujedv
	rdefrdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
	hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ru4-X25CZWxnYZMYrHVk2YtinAgp7KgEcRovlh18HsfzMwk0IrhbfQ>
	<xmx:ru4-Xwd1lLkOqroLDanlhW--Sc4k22l2K7SpihtgwHUNr5ESM4Qi7g>
	<xmx:ru4-XyKKsZ6WeWrHc1O8qHYr3QICsklmKxe0EMi6GCjVvbRocwmZVw>
	<xmx:ru4-XwZ1EQN7r_XtabRrvyFX1qDbPoN7u5w72fL1tmNYv0VvVO_ftw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 137723280063
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 17:44:14 -0400 (EDT)
Date: Thu, 20 Aug 2020 14:44:13 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
Message-ID: <alpine.DEB.2.23.453.2008201440380.1109151@chime>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Thanks Didier. Little did I remember I have an sbl directory with the 
following
brld
brltbl
Changelog
config
debian
doc
keymap
make.config
Makefile
man
profile
python
sbl
spk
spkfilter
The first 8 or so are dirs. Looks like these are from December 5, 2018. 
Not sure what to do next, other than sure I will run an alien on that rpm, 
but I've never known how to handle source files. Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

