Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D8A153632B6
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 01:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618703780;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZIdjQ6AJZTskl5t1xoU88C6c9YCG8tHliOdd+aSvXjI=;
	b=PI0EgXtrVqMmbd46+LnhWp535iMbktFdD+K+zGVPgDtNcwpDuILnMsBQIShihyhKladE4E
	mBo/qOCVIUjPdC40BPLlh1VGGb2HyUIf+SJtNPY4o+lBXlBp52osu30d17SUcQqIXiIUuR
	0VPCVKDACmh+Px8HMfSo4VHkoW/EgdQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-6XPWepSmPFeLYg7t98pXlA-1; Sat, 17 Apr 2021 19:56:18 -0400
X-MC-Unique: 6XPWepSmPFeLYg7t98pXlA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5803A107ACE3;
	Sat, 17 Apr 2021 23:56:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07B915C6B8;
	Sat, 17 Apr 2021 23:56:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C6FC844A60;
	Sat, 17 Apr 2021 23:56:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HNtVF0000881 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 19:55:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 330B21111A54; Sat, 17 Apr 2021 23:55:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2EC4D1111A52
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 23:55:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B8DD811E93
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 23:55:27 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-473-ito2C4hLPpKCWgvYgWK_wQ-1; Sat, 17 Apr 2021 19:55:25 -0400
X-MC-Unique: ito2C4hLPpKCWgvYgWK_wQ-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id D02E85C040B
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 19:55:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Sat, 17 Apr 2021 19:55:24 -0400
X-ME-Sender: <xms:bHV7YCJVSl8K3SO_PETEfFrnbPWHTBKqaSuvvrirtkQbtkM4yA8hTA>
	<xme:bHV7YKLncJqpK5nZEFsLnRcGdo6L8pKcHM12w0Q2ppYuyLtLronndXY0IYzRC6zXZ
	vsx_EigUX1vP94QeiE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudeljedgvdejucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:bHV7YCuE5i69rworHVnTzZKrsMQ1eRHYPVoGvflCCEw9wfbsRRoUQA>
	<xmx:bHV7YHZUbHmNOUstlivZVDuPbZfflB2wfZkqAYRgl74P75bwAEKqSg>
	<xmx:bHV7YJa-DXTKh1AtkJzlrW4qQ3kZvuQdn2ySN3Z6AhR8RAhzR-fajQ>
	<xmx:bHV7YCmCr2sUh7dQ__ei_DCYuQjhj3T5Tk1T2BHF9mgLPd-6g89c1w>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id 024001080064
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 19:55:23 -0400 (EDT)
Date: Sat, 17 Apr 2021 16:55:23 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Voices
In-Reply-To: <69EB40A9-8E3F-4908-AFFE-92B5E52C7FBA@yahoo.com>
Message-ID: <e7dcbd70-2c5c-be37-b82d-ce5d3a491b4@hubert-humphrey.com>
References: <69EB40A9-8E3F-4908-AFFE-92B5E52C7FBA.ref@yahoo.com>
	<69EB40A9-8E3F-4908-AFFE-92B5E52C7FBA@yahoo.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thats a wonderful question? I wonder also if there are good quality voices only 
available in ORCA, but not yet for Speakup?? I want something like Semantha, 
but an Oralux site is still down. Thanks so much in advance.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

