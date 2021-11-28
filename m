Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE604609A7
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 21:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638131043;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T3mIjvwNXFQWDBlRw8vit6+Zxc1F1uZbXf4ujt4GLD0=;
	b=aRUENkw0q8rSwpdj7WMh0ioDtsvmBMBfI1v1WU/UAtQjnaNWQv+nOEA+3/Z3u7YVVxFgt2
	lhK7WEsfQysN2O5QIm/oxJGLX6t6GcZ34FNGpiWaJt5oRUnunoglRB51K1d8LlxBJU6KoL
	HFIdf7Ntd0/bVBEUIEbB88k5g7TlSa4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588-88w7-1QMNNW99skHJ11UTQ-1; Sun, 28 Nov 2021 15:24:00 -0500
X-MC-Unique: 88w7-1QMNNW99skHJ11UTQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 359102F21;
	Sun, 28 Nov 2021 20:23:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E37975D9C0;
	Sun, 28 Nov 2021 20:23:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 536E64BB7C;
	Sun, 28 Nov 2021 20:23:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASKNm7g018915 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 15:23:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A1FD71121319; Sun, 28 Nov 2021 20:23:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D98E1121315
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:23:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2F198022F4
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:23:45 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-549-37NxNLpQONqkMTnLvChNRQ-1; Sun, 28 Nov 2021 15:23:44 -0500
X-MC-Unique: 37NxNLpQONqkMTnLvChNRQ-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id BCEA53200A39
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 15:23:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Sun, 28 Nov 2021 15:23:42 -0500
X-ME-Sender: <xms:TeWjYSYA_pq8qMIAkgSuLLPMXa0gcmWYnn54g2ZSP9LJkdGDa3WNyA>
	<xme:TeWjYVZQRpH_1ja9XQcNhbCBeQS-nwROiBQ-6sBaNBbBl8_ZueWc3M4o-e3ff2DN-
	rg_wOXuL8vO4TiCYzI>
X-ME-Received: <xmr:TeWjYc_QxaFtcfHlBfrKyps33bjjR0xfkVsAacetqacc4OFwif4d2IygmtzH9u9YjCymVvt6lFSPzAPRASdAh3faAgDM_glJhw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrheeigddufeekucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:TeWjYUpOi-DAAc9NwuE_kSgw3ohz4WpQUOGVPf5dNW0sAEL6Gxg9Fg>
	<xmx:TeWjYdqVIlhq1T5pT5sbgklXHi1qyAEXdFVlAIz69yTqim4r-GfDJQ>
	<xmx:TeWjYSRGOktei4pNk_wZy1SL9ez2GN0wMDDNu3fHqb3j7gWNtry6Rg>
	<xmx:TuWjYfH3J9yqlzs6AVbXyKY_sqio3iHiTUtQEVbulVZxhICaeMwEeA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 28 Nov 2021 15:23:41 -0500 (EST)
Date: Sun, 28 Nov 2021 12:23:39 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
In-Reply-To: <91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
Message-ID: <5467ccc6-1ff6-3dd1-8b2b-3dd07cb552e@hubert-humphrey.com>
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
	<ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
	<91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well Didier, not2tute my own horn, but I was the one who suggested a bookmark 
file of favorites in youtube-viewer. Its an -fc option in his program. Seems to 
only take names of actual channels, not nick names you give them.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

