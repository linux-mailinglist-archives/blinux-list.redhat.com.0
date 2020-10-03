Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id C1263282459
	for <lists+blinux-list@lfdr.de>; Sat,  3 Oct 2020 15:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601732755;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5gDpyqgIqI26Qzjp8dwiD4q/A8fub4yLJRHGA73jH6U=;
	b=aypTFTWjD8Fcl+DrpAgI3uoWxlOJ7miESKzsb6hKdqheMpNeWU4PwKwHt/I2QHAdbbBB7z
	5YtoAHDr29DzQPyDx4oZNJlLjwhD0zxDD4LtHvN1wcNl+heSzsMaBTSiw1cWqjN16LprQP
	cqlEoK9U41O7JdCR4UoCrxxkawt7+mE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-6_Q0ekizNfi0dIeycg_fng-1; Sat, 03 Oct 2020 09:45:53 -0400
X-MC-Unique: 6_Q0ekizNfi0dIeycg_fng-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BA4410066FD;
	Sat,  3 Oct 2020 13:45:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2504B1002C0B;
	Sat,  3 Oct 2020 13:45:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2B4E044A41;
	Sat,  3 Oct 2020 13:45:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 093Ddj4W021558 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 3 Oct 2020 09:39:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 386DA215688E; Sat,  3 Oct 2020 13:39:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3443E2156880
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 13:39:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 967598582A1
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 13:39:42 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-136-O3NoNF0aOVm6dSl1-2_qIg-1; Sat, 03 Oct 2020 09:39:40 -0400
X-MC-Unique: O3NoNF0aOVm6dSl1-2_qIg-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id B9C2D5C00A9
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 09:39:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sat, 03 Oct 2020 09:39:39 -0400
X-ME-Sender: <xms:G394X1BTS3PkYw2rkhVGD-UzWEEMebildqh_-F5MC4YQrI4vQlKolg>
	<xme:G394Xzh1ojn-GXApO7V_pEgEJEfyhk4RIrJXE2C1dWVrje-a7pPF1ZyHMvlxpy0ZF
	QM6R5nPTRf25rDCzSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrfeekgdeihecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhgfgggtsehttdertd
	dtredvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeefuddvuddvvefffeevge
	ejfffggfeiiefgtdeugfehgfejhedtieelhfeuleelffenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:G394XwmRfBamVO-_2iuSnZXheeWeXOcLL-vRu6dTU22VshEpbKNuZA>
	<xmx:G394X_xCh0SL0Pz0YFhuOtueXFycMOocchdfX9SDj8vZp1d4s887PQ>
	<xmx:G394X6SxWTibzoLGmQQ34XStNtjhRQWmA-jl_YBD3HRRi8wt1pkPbw>
	<xmx:G394XxfYVOwgQQjhRLuknmfBnjSlQBAsWFRu8OHAPRZHqpb-cusoIw>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 39C573064674
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 09:39:39 -0400 (EDT)
Date: Sat, 3 Oct 2020 06:39:38 -0700 (PDT)
X-X-Sender: chime@chime
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
In-Reply-To: <20201003130430.GA2173@rednote.net>
Message-ID: <alpine.DEB.2.23.453.2010030632540.2247242@chime>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<87tuvf2km3.fsf@cmbmachine.messageid.invalid>
	<20201003130430.GA2173@rednote.net>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

Well Janina, I found that if I set my console at more than 135lines, I 
would have strange results useing alpine with writing longer messages. In 
that case it was a challenge knowing where I am in a larger message. NANO 
didn't seem an issue. Obviously I find a larger screen helpful in useing 
the Speakup cut-and-paste feature.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

