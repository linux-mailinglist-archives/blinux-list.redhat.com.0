Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0A9FF34112E
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 00:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616111233;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RJPFx5C7R/a/wULWEkUFEA9Vm0inet4R4zjyGYZ/0aU=;
	b=GQPga9I02M01Mo0JlAReE+bps6JTXKhco756qx02NgO0Xg15NPdZ4IFisIxk/OzHFp1eaO
	J9/MExzsCCClsDWosqa7TJpxaWSkgNx71aX4v+WYlye+9Qjia5xJL6BlAPa0HD/IUIIh5g
	nE2fqNAFV2wmDbGz13u4zF/4RBSSgck=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-601-RYVH2Hj2NGeSYZxT5SBm2A-1; Thu, 18 Mar 2021 19:47:10 -0400
X-MC-Unique: RYVH2Hj2NGeSYZxT5SBm2A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D586180FCA1;
	Thu, 18 Mar 2021 23:47:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D00175945C;
	Thu, 18 Mar 2021 23:47:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CB8B74BB7B;
	Thu, 18 Mar 2021 23:47:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12INkx0c028365 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 19:46:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 176EF2166BA2; Thu, 18 Mar 2021 23:46:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1126B2166B44
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:46:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4981E800B24
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:46:56 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com
	(wout5-smtp.messagingengine.com [64.147.123.21]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-423-n82rFY50MqiG8gQrKqiH0Q-1;
	Thu, 18 Mar 2021 19:46:53 -0400
X-MC-Unique: n82rFY50MqiG8gQrKqiH0Q-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 8730EAEF
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 19:46:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Thu, 18 Mar 2021 19:46:52 -0400
X-ME-Sender: <xms:bOZTYIIrVTR33lJoorjtqrlUCQtefgMV3QAwgEmVUksSa7aSTDzN1Q>
	<xme:bOZTYIHTpw2ZpYItA4twq1L53op5tcZidDlm2tsZBWNyNhfj7s7V_sULY3hTdNqiw
	PqYE062Mi7WDBwc5Ls>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgudefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucfkphepuddtgedrudejvddr
	fedrieefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:bOZTYFnpixJmzaKN87omHQK6HU0XvlXM3O4DSIA6iKLXrlK4lXmUnA>
	<xmx:bOZTYNI976Z7bCXGBy5nHRmzD7NJEeMRnIu0D73hE3iQQfGtHy5geA>
	<xmx:bOZTYOYH_y0hjwzLIj5JEGykf7snDTVSSIwzZ_wKl_fmj_dx8g6WWg>
	<xmx:bOZTYMNQrPw4D_8YbngYepyGxgzhrPBVm0PJWfhkZWNLVBTfWkICmQ>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id BCE59108005C
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 19:46:51 -0400 (EDT)
Date: Thu, 18 Mar 2021 16:46:50 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Are Their Any Other Graphical Screen-Readers in Linux, Other
	than ORCA?
In-Reply-To: <7fad9a07-f428-f096-1a4e-2ef5589a1388@protonmail.com>
Message-ID: <6da736c2-72d0-41b2-360-d455938eb7af@hubert-humphrey.com>
References: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
	<7fad9a07-f428-f096-1a4e-2ef5589a1388@protonmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, thanks for your comments. ORCA doesn't seem very intuitive, actually its 
the navigation which seems a large challenge. 1 of my other sighted Linux 
experts were here last Sunday, trying to hunt his way around ORCA, found it as 
challenging as I have. Sure in any graphical, tabbing around web-sites would be 
an obvious choice, but the lack of an up-and-down menu the way midnight 
commander, alpine, or lynx in console, or as I said earlier, a win95/98 desktop 
experience wasn't too bad. Thanks again
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

