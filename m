Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD98440C2F
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 00:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635633945;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E7iAWFsHq68LU4/ytc8fkxX9yrQQRl76RJjDMBmH88k=;
	b=is9M4mBLyU9EP8cjQ/1c86dxKrye3D+xpsrVp3l/5g/Ovz2qFH7/Cdb4jkcip6ew78gWbY
	p0W+9VKpljTHm8U5JGwmUURlJYpHwldzd2OcBlVo5o+tPJETcDNAKrzdHgbJHtu3tDq8HH
	vKedYAkBu85EiCmRda1qnkebSEZmcz8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-7zt-MOpVMQKt2VnBbq2dZQ-1; Sat, 30 Oct 2021 18:45:44 -0400
X-MC-Unique: 7zt-MOpVMQKt2VnBbq2dZQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54CDA1006AA2;
	Sat, 30 Oct 2021 22:45:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5D615C1C5;
	Sat, 30 Oct 2021 22:45:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 82F851803B30;
	Sat, 30 Oct 2021 22:45:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UMjXw7031526 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 18:45:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8CAB21121315; Sat, 30 Oct 2021 22:45:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87FCC1121314
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:45:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9357F899EC0
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:45:30 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
	(wout3-smtp.messagingengine.com [64.147.123.19]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-508-HRkvJktKO0Gou2fPhiOSoQ-1;
	Sat, 30 Oct 2021 18:45:28 -0400
X-MC-Unique: HRkvJktKO0Gou2fPhiOSoQ-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 5E1FF320098D
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 18:45:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute6.internal (MEProxy); Sat, 30 Oct 2021 18:45:27 -0400
X-ME-Sender: <xms:Bst9YUWmNbBbE6rXxieAu3WOH1P23IkETfLpYAwputGxbBvSMyuTzQ>
	<xme:Bst9YYnly5_WhpXDH592YJgApED3MyqHBpQJKI-vZfUtEv8rVSjJrUx0C1oEA8kEa
	LdsP1M676yUv_BjoY8>
X-ME-Received: <xmr:Bst9YYYptplv8lvvr_MaFMzlVp5_jkqDzlhUjx3jwfzFEu0ZKV32V0cmoSMG9R8-XLfIwYnjGmMI6mmg8BaCJFhW6mfiF7qbJA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdegkedgudefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihe
	dvfeffuedtgeeuudfhgfelteelvdduudfgleekvedtveenucevlhhushhtvghrufhiiigv
	pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
	hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:Bst9YTV-SdwV-DckallMNFvQLgFRlkoopGlsP6J6HkaKTEtiAPtb8Q>
	<xmx:Bst9Yekezl1LVKhZqFkSKzLs3epo87pWRq1Ia3_GGPDpFohAfd523Q>
	<xmx:Bst9YYcbOy4x716sywzBlxrtqkv_1KhquKwM72qtvWoyyx678kgbWw>
	<xmx:Bst9YYTgafBI07njRJ1EGrMwH-Mxein3SQvomt2IJnnBP4nP-RUWAw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Sat, 30 Oct 2021 18:45:26 -0400 (EDT)
Date: Sat, 30 Oct 2021 15:45:24 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Coconut speech at startup
In-Reply-To: <alpine.NEB.2.23.451.2110301831520.776@panix1.panix.com>
Message-ID: <a2d6d9ae-4bb0-7d59-5edf-8e29d3da7736@hubert-humphrey.com>
References: <9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
	<DA67F7C5-5947-4414-83A3-8E27FC9B60DB@gmail.com>
	<alpine.NEB.2.23.451.2110301529560.17098@panix1.panix.com>
	<578e1897-329a-e039-54cf-ca2869978df8@gmail.com>
	<alpine.NEB.2.23.451.2110301831520.776@panix1.panix.com>
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

Wondering if there are completely commandline ways of doing this? Actually 
reaching a similar menu from a commandline would be great, as its quite a 
hassle having to ask a hotel staffer to navigate a Linux graphical screen which 
they don't always understand. I would rather do this in Speakup. Thanks so much 
in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

