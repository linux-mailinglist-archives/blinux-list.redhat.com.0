Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C02C2460967
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 20:29:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638127745;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gqWEKQQsWDwTYlt6xP0LZm7QXCf2Cto6nD3b9obtrFI=;
	b=D+6INNy79IUu/4/VGdydrW5ABzvy+soQjdckXwyNrF9oFtjw9dOhBIFQ5uzF/t2RH6vYGg
	2KvUPyduk0CMZuoy3u9gUgiNrfPI+DD/GdxC+sEVm4KiOAc7UMQTrGY/a42DdgZW5XtAK3
	fs3zAqQBSr4Ywn85qVYkOeA5czk9WPc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-194-8fkbEOMsMvm40tQBZ81_1w-1; Sun, 28 Nov 2021 14:29:01 -0500
X-MC-Unique: 8fkbEOMsMvm40tQBZ81_1w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8CA6E104ED1A;
	Sun, 28 Nov 2021 19:28:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47E901E6;
	Sun, 28 Nov 2021 19:28:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 348061809C89;
	Sun, 28 Nov 2021 19:28:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASJSmAn015324 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 14:28:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6215C1410DD8; Sun, 28 Nov 2021 19:28:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BF891410DD5
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 19:28:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F06885A5AA
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 19:28:48 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-585-vKUWdEJJPF6MDMFFzDpAYA-1; Sun, 28 Nov 2021 14:28:46 -0500
X-MC-Unique: vKUWdEJJPF6MDMFFzDpAYA-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 020E73200B58
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 14:28:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Sun, 28 Nov 2021 14:28:45 -0500
X-ME-Sender: <xms:bNijYaYrzE53IQBJa1mVz_cFWrpZW717F8GxqgQoXE8Mtgbi_aoz4g>
	<xme:bNijYdbVI3UkTCa8dr1hKCT2R0dPwIeKfbsDv4yQwzlJ5k2SlBWPpgi_xSi1yfkIg
	DKE7C_lboFvFtt4R74>
X-ME-Received: <xmr:bNijYU-oCL83CJGLq2-odXEhwnaSJA_NYt17DXnLysmEYqjWykmz7RlUASXzeFmmM2EzfTFDtt9vA4LdyGgIW7QjEdz0pMfMSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrheeigdduvdejucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:bNijYcoPng0m7N6mFfaZG3OxWqtgfs3Zv4K37hecj9pgkLESg2DQvw>
	<xmx:bNijYVr598SfcUg0cO_09FM1w_gbE97Tw9lBqR8yqVwNFcJg7SDGgA>
	<xmx:bNijYaSjehN_AIpC0-ykm8iORpHp08HtHRSRZ2Zb9fQ2yN7EYrWZLA>
	<xmx:bNijYXGtIJ2fu32riK7_ku4Ik8c_0pQUUUGN9OGHk1qabpQwGIxTxg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 28 Nov 2021 14:28:43 -0500 (EST)
Date: Sun, 28 Nov 2021 11:28:42 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
In-Reply-To: <fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
Message-ID: <ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Didier: Yesterday I tried pipe-viewer, sure it works, but even with 
max results set at 50, I only get 20, unlike youtube-viewer where it is 50. 
When I had straw-viewer, I noticed, you could get away with max results at 58 
but half of the items were duplicates. By the way, my Linux person wrote me an 
alias to update youtube-viewer. Actually, its short enough.
#!/usr/bin/sh
cd /home/chime/youtube-viewer/
git fetch
git merge

perl Build.PL
sudo /home/chime/youtube-viewer/./Build installdeps
sudo /home/chime/youtube-viewer/./Build install
Back again live, I just type "tube" and now I am at 3.9.6
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

