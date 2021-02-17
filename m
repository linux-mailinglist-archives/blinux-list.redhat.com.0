Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4AAA431DDB6
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 17:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613580931;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TQQsHjKfX8kCN8zMyTFhszN8iLEG1LF+CBM4DQ9fPVY=;
	b=RcPJy0BpLUfPDafbQy3DlFrqBUk01G1ArsaC5dA/P/K7HHePoloENqDmfmFIcqXlIs2s0l
	P9a9/jrOsCJ9bvcyB1kOWO6f1V9ECNy4PMY8NSPejA8lNpSWhlGVm1qnwknOPu46IYDXaW
	79o8Sdfj4lovcfQv5Khr3iO2ueD74RI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-560-q9D5qEKHPsCSJrk0I5T-sw-1; Wed, 17 Feb 2021 11:55:29 -0500
X-MC-Unique: q9D5qEKHPsCSJrk0I5T-sw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A641F874980;
	Wed, 17 Feb 2021 16:55:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8513519C46;
	Wed, 17 Feb 2021 16:55:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5F0E618095CB;
	Wed, 17 Feb 2021 16:55:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGtO5l001340 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:55:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E8CAA104848; Wed, 17 Feb 2021 16:55:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2E19104858
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:55:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3825100AFE4
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:55:20 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-568-GS181TEQOI-sD7HU2Hb4Fg-1; Wed, 17 Feb 2021 11:55:17 -0500
X-MC-Unique: GS181TEQOI-sD7HU2Hb4Fg-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 2E9105C01C2;
	Wed, 17 Feb 2021 11:55:17 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Wed, 17 Feb 2021 11:55:17 -0500
X-ME-Sender: <xms:dUotYIG-q5v9lsxXrm3NrWV8c-ZyOG0I435SVUJjAWFFy-6xBCqikw>
	<xme:dUotYJGG_vorX3vC0vLU59VL6ezdkfgJRBc24kdxP8Q2q2HWQRLMQUrH2KJzqULUZ
	4dglOU9fi3sAFm2YEg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedvgdeilecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecukfhppedutdegrddujedvrdef
	rdeifeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
	gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:dUotYFMNU8GK9DYeGP4Jr41hSCgWyNFFItc9lwcY04H7P2jkVOIxXA>
	<xmx:dUotYIG_ajtZQWfWffZCPkNOItRFi6dzjgqXok1UDGwGPHVF2_GsGQ>
	<xmx:dUotYMN5QAuoCnxs8dIfGkO5SE1OJm_lIgstyIY3T5qiB62Nhr4gGA>
	<xmx:dUotYJP6kMqdHPvfMFrtPziMx7ISkXMLyPLcYUbmK3eIRrF8TLM6Wg>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
	by mail.messagingengine.com (Postfix) with ESMTPA id ADF5C1080068;
	Wed, 17 Feb 2021 11:55:16 -0500 (EST)
Date: Wed, 17 Feb 2021 08:55:15 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is this possible?
In-Reply-To: <Pine.LNX.4.64.2102171141410.1320379@server2.shellworld.net>
Message-ID: <bad529b-f06b-c440-70db-98354d8927d7@hubert-humphrey.com>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102171111070.5642@panix1.panix.com>
	<Pine.LNX.4.64.2102171119510.1319856@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102171130420.5642@panix1.panix.com>
	<Pine.LNX.4.64.2102171141410.1320379@server2.shellworld.net>
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
Cc: Linux for blind general discussion <blinux-list@e1890.dsca.akamaiedge.net>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Couldn't some1 use xvfb if they were running graphical, to assist a person 
who was only in console?
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

