Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F28944609C3
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 21:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638132737;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0GhZ1GxOh1bIljqvQBfsBfEgK5z3sGUNslDtP0npJMQ=;
	b=I2MNOh+I1E9Kxn+F4mtYdX9T+nFyCidPtdZNMwCkAGmxhWQTvmIEk+VxHlGqe2kvhXRp9G
	eCO6C9IaX0ARU8EAB/YAP9ysl2Jvy/RFu0e86KjVI5qwMhV9zM/Ih0WBCCjTQg0XYEMip4
	zAVYI80jdKZ8+FeuvmIWBPY+IEhc1ik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-563-EdfW4nRxNvWv5JVRao0YGQ-1; Sun, 28 Nov 2021 15:52:15 -0500
X-MC-Unique: EdfW4nRxNvWv5JVRao0YGQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 553DD1006AA2;
	Sun, 28 Nov 2021 20:52:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 408095D9C0;
	Sun, 28 Nov 2021 20:52:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 14EF21809C89;
	Sun, 28 Nov 2021 20:52:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASKounT021322 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 15:50:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5CE0251E1; Sun, 28 Nov 2021 20:50:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 577C251DC
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:50:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 617A71066559
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:50:51 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-218-lie7vbnAM0-rZat5adVyDg-1; Sun, 28 Nov 2021 15:50:49 -0500
X-MC-Unique: lie7vbnAM0-rZat5adVyDg-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 27EE93200BD2
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 15:50:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Sun, 28 Nov 2021 15:50:48 -0500
X-ME-Sender: <xms:p-ujYYZD1nvPgVVuGjzxOFkrGPo0rnmlDpoPLNr8GeS-ZSxDzTjiSQ>
	<xme:p-ujYTZAY_bNx4_CO3KpY4gmxAt0OA3-G8NcjkP0tk3ghElwuKpKHv0o2dXr_bsMg
	XWnqH7247odLwzQCHQ>
X-ME-Received: <xmr:p-ujYS8zGxH4uFRgDFgincJiqmz0BiRqtnCjKOT8Ict3PUhVht6ucpL12pFIJeCnmblXsH6qDLJ69S0s9WlNmLN5rwScvJPM2w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrheeigddugeegucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:p-ujYSpxyO69nW0efHB9ToLqzJB1DtBHMEmbMw539p6iE3furZfeng>
	<xmx:p-ujYTqv_7s5eB8ojyz3oMREmjvUOVe9cx6yy-O4nWehErE5ZQPlnw>
	<xmx:p-ujYQRUqhlWqU7yLGfmHUfDCzBgnGOqqTqtJq46tXpFmr6ed-QLag>
	<xmx:p-ujYdEDP6lA7C7XKJJKnNWnKTJTkgC7gZC9kz_koG6uuCudQCS2UQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sun, 28 Nov 2021 15:50:47 -0500 (EST)
Date: Sun, 28 Nov 2021 12:50:45 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: pipe-viewer downloading w/yt-dlp possible?
In-Reply-To: <5d1e874b-076d-ebce-c83c-c103d7d7f2f0@gmail.com>
Message-ID: <cd25ef98-e869-3241-badf-17bbbca05b28@hubert-humphrey.com>
References: <5d1e874b-076d-ebce-c83c-c103d7d7f2f0@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

I think with all of these related applications, after you select a video from a 
numbered list, you would use a dash d. So lets say you want a group of videos, 
it might be
17-18 25 -d
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

