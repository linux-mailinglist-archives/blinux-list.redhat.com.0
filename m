Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7616E3137F6
	for <lists+blinux-list@lfdr.de>; Mon,  8 Feb 2021 16:34:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612798475;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tIHtckVkf/iIntQaOqq0BuctA06gPQcbB7xx+UpLvVI=;
	b=bgM4y/mD+UZxvzr/sGbJGAgscoQu0qEgGdO/Gyjj9J32bzIGmmh+XpwaK5BeJulTGlc1LG
	kpud4UAW5ROYYYoRY1GAnMQUkwyhYseoSPxUJwBIcYc5X3DA8iTo9H2wtgsE2ewpWl4YBw
	lFGEHOjVd1UzwTTTM1Jke085TTmcMJU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-Lsehuu83MWuSqCx8fgE3og-1; Mon, 08 Feb 2021 10:34:32 -0500
X-MC-Unique: Lsehuu83MWuSqCx8fgE3og-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4734D107ACC7;
	Mon,  8 Feb 2021 15:34:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FFBE6085D;
	Mon,  8 Feb 2021 15:34:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A1E918095CA;
	Mon,  8 Feb 2021 15:34:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 118FY9FV012590 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Feb 2021 10:34:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C7BE22166B2B; Mon,  8 Feb 2021 15:34:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2E982166B29
	for <blinux-list@redhat.com>; Mon,  8 Feb 2021 15:34:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6C265811760
	for <blinux-list@redhat.com>; Mon,  8 Feb 2021 15:34:07 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-167-LKiNFvDWN0CzcV8HAAftNQ-1; Mon, 08 Feb 2021 10:34:05 -0500
X-MC-Unique: LKiNFvDWN0CzcV8HAAftNQ-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id B615D5C008B
	for <blinux-list@redhat.com>; Mon,  8 Feb 2021 10:34:04 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Mon, 08 Feb 2021 10:34:04 -0500
X-ME-Sender: <xms:61khYDJ5fUvyf-E7T5DNF6K5tBS4A-mX2C5xH09N0o_P-FncFX_fxg>
	<xme:61khYHKiXT1XHXCzXlq2im3EB-eBgrzkrHW2Ag_7O_az2aTpBA3RDCFe7JCmATbek
	GwfbORd0I4dfKhILnM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheefgdejiecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghr
	thcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrg
	htthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheefhffh
	vdetkeenucfkphepuddtgedrudejvddrfedrieefnecuvehluhhsthgvrhfuihiivgeptd
	enucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhh
	rhgvhidrtghomh
X-ME-Proxy: <xmx:61khYLvuSNUbxLcb13rAkd-3RHIcQlJB_gh7DR1HJX165W6ovH9pgg>
	<xmx:61khYMYT0dmRYratgQDeNaz4PH0UHotKnH4wAneapPM4vYuKdA_yGw>
	<xmx:61khYKYTlcBi0IX9hwTa3PnUaEQc5AZ10Cqnggf1XazBEVv6ccDiqQ>
	<xmx:7FkhYDkY_ccGsD7GLMss7FYvzmi9EAybekvCZ1qEqomFbpcovW3DJg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5AD081080063
	for <blinux-list@redhat.com>; Mon,  8 Feb 2021 10:34:03 -0500 (EST)
Date: Mon, 8 Feb 2021 07:34:01 -0800 (PST)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Can I Increase the Volume of a PC-Speaker?
Message-ID: <b23c86b2-8246-e432-43b-80c1856c51e@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: I am in Debian SID, want to make my PC speaker louder. When I get 
new-mail in alpine, I can hardly hear the beep, unlike on a laptop where it 
plays in the sound-card. No amount of searching turns up how or if I can ajust 
this. Sure there is a "beep" command, also setterm where I can ajust a 
length-and-frequency of a beep, but no volume. Can any1 please inform if there 
are ways of doing this? But no I really wouldn't want to re-direct to an actual 
sound-card. Thanks so much in advance.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

