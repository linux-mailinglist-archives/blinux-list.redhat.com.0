Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6EB81326F76
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 23:45:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614465914;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=daNUK3RFEVJz0NRrIrzT4s9hxomEcC00soqPMTEuRmM=;
	b=hmVliGuPt2VlRfrEa9es1L1crma/x6XuiMcMdzHa0bG0pI6BHN6myICs3iyxfbCclyaGOP
	mAKYQqZePM1bbURi7av8ddtFscJsRgYx4JeNIf0RK7h7fqY5EprZH9JpSFcj96bO84JWGH
	6pDqSyMrNKHS8IgHk17sk/WJ6CRwaOI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-Bk2kv8EINw6MMCBKJegeaQ-1; Sat, 27 Feb 2021 17:45:12 -0500
X-MC-Unique: Bk2kv8EINw6MMCBKJegeaQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D39AD18C35BE;
	Sat, 27 Feb 2021 22:45:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D95B260C70;
	Sat, 27 Feb 2021 22:45:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 95DEC18095CB;
	Sat, 27 Feb 2021 22:45:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RMj05a019362 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 17:45:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 27A99202A424; Sat, 27 Feb 2021 22:45:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 21A9A2026D46
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:44:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 815C81022F09
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:44:57 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-177-_TvamNcAONaMKwtDZbeCnw-1;
	Sat, 27 Feb 2021 17:44:55 -0500
X-MC-Unique: _TvamNcAONaMKwtDZbeCnw-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 52A31605
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 17:44:53 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sat, 27 Feb 2021 17:44:53 -0500
X-ME-Sender: <xms:ZMs6YMAUil42R_nREcT39N9JOv6dPQCIP7fZhCT0rc9AS6A6VsY9gw>
	<xme:ZMs6YOhxZTg4ifrhlseJwfAo8aJWPfXUcuCy-opEN550E_t_Z7a8WFbGfj-4qEweR
	MbZ9H7KONxAwqhGHZ8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrleeggddtvdcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedvrdef
	rdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
	gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ZMs6YPlHyFBbwZJlms4_WPx2-z1RA8QJJbtZ4utsX-Yms9h-p1e72A>
	<xmx:ZMs6YCzHX-JlLg5hcVhjEk3RphN5q4-0ukwGB3M5pz9WJQSZjgRwXQ>
	<xmx:ZMs6YBQajXA9cPtLzE6B8FIi4rrAoNqXmmLDUH90rZpRHSsb6LBInA>
	<xmx:ZMs6YIdXwL4S-xidPL3UvPPcWgccheWc8CYyjUlOnP4SYQwK6r59ag>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 6C3231080054
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 17:44:52 -0500 (EST)
Date: Sat, 27 Feb 2021 14:44:51 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <161446448778.8.10629460359382025123.4270314@slmail.me>
Message-ID: <73c85e2-c3b5-dc82-93ac-8ec1ec176d63@hubert-humphrey.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<161444979750.8.5402375494901459390.4266338@simplelogin.co>
	<161446448778.8.10629460359382025123.4270314@slmail.me>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, SL, I would be happy to send you
ivona-voices.tgz
but since this list blocks real e-mail addresses, otherwise an entire list 
would receive it. So, please write directly
chime at hubert dash humphrey dot com
Replace some words with symbols. If I still had my web-site hosted on 
shellworld, I could just give you a direct link, but now my site is through 
fastmail, need to setup something through webdav so I can upload items in an 
ftp interface.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

