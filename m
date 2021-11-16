Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CB02C4528F9
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 05:04:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637035457;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FK95ZYl56uUGc47iSivpZO9K15NpxghkwCFZOHvBOe8=;
	b=EH40spEdlmM3xoYZrSZdcaWQ0rk1I1L/xnMGHl/a1IX3Z+MaB59n35w+1Mfucs3spAIrva
	dcqXdRymdbW1GjDtB9aNKyqWc0svuR2veDeAdT/812T+c4c0fsgdHQR+vFQCxs9TelEy9B
	UBXD8D3/RM1BpZtdvYJ2qpmy61wUV2Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-45-XX3iPmy4Nkmt0xeHoKBnGA-1; Mon, 15 Nov 2021 23:04:13 -0500
X-MC-Unique: XX3iPmy4Nkmt0xeHoKBnGA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E92F100C692;
	Tue, 16 Nov 2021 04:03:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D999D60843;
	Tue, 16 Nov 2021 04:03:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A96F41819AC1;
	Tue, 16 Nov 2021 04:03:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AG43gHG019164 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 23:03:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5E5B32166B26; Tue, 16 Nov 2021 04:03:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 593F72166B25
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 04:03:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79A8F800141
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 04:03:39 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-361-Y6UJTrNlMVm8b1zl7C0OzA-1; Mon, 15 Nov 2021 23:03:34 -0500
X-MC-Unique: Y6UJTrNlMVm8b1zl7C0OzA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 5DB41621C8A; Tue, 16 Nov 2021 04:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 5A70B621C04
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 23:03:33 -0500 (EST)
Date: Mon, 15 Nov 2021 23:03:33 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Gui vs. cli software
In-Reply-To: <a0539f37-ed62-2fa0-d3ad-3568f0936ac2@seznam.cz>
Message-ID: <Pine.LNX.4.64.2111152300440.2475227@server2.shellworld.net>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
	<6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
	<CAM+Q2c7PzGGQ7rY_FUWtcxiSOxfGJH_bVbjtZ6DMRZpjF2_v3A@mail.gmail.com>
	<a0539f37-ed62-2fa0-d3ad-3568f0936ac2@seznam.cz>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
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

Honestly, I wish someone would spend time creating a multi level browser 
for the cla.  Or even update things like e-links which did a fine job.
until the gua has  voices of the, speaking personally, quality level of 
what I would be using cla wise, I doubt outside of my shell services, I 
would use Linux at all.



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

