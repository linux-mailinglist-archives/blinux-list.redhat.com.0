Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3B143F423
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 02:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635468563;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oMg5xB8RY6DBEX3F3sQtFtpL7MUAIz/hyCNwuW+yQio=;
	b=KOk3Oa/vh3r5vp+bUQIu7+t6+TozhwjdBQJ2trQwHdl7ey8QGJSa0YsogQ2Qs48IkUPoKq
	cruLQhCTZT+6C76pna/cazz1Yfv+7e4+6zXLiIfIaCAwkaWBfVRlw0Wn5L6a2U/LX5LDta
	YlohEQwxJunlc9FaJycPQ8A61EO888E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-458-7QMCId2BMH2GtpQOFxkfJw-1; Thu, 28 Oct 2021 20:49:19 -0400
X-MC-Unique: 7QMCId2BMH2GtpQOFxkfJw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 56C7118125C3;
	Fri, 29 Oct 2021 00:49:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB74B1A26A;
	Fri, 29 Oct 2021 00:49:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 422991800B9C;
	Fri, 29 Oct 2021 00:49:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19T0l2lq010552 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 28 Oct 2021 20:47:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EA8572166B3F; Fri, 29 Oct 2021 00:47:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4A332166B2D
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 00:46:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDF5D80015A
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 00:46:58 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com
	(wout1-smtp.messagingengine.com [64.147.123.24]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-3-IMNSY_BpMYmWL4qz5PpjVQ-1;
	Thu, 28 Oct 2021 20:46:56 -0400
X-MC-Unique: IMNSY_BpMYmWL4qz5PpjVQ-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 1C8EC3201D7D
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 20:46:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute2.internal (MEProxy); Thu, 28 Oct 2021 20:46:55 -0400
X-ME-Sender: <xms:fkR7YQur5zimKLKxAZABMfs1FJCHj5TTmROB6U04WlY-qbt-huaUAA>
	<xme:fkR7YdfRad4AjbT6sq3NdefEXaQRcMQz2SQz_SjIrbg8iyRi7aPZ_-nywZSNTQHwG
	3riCSwhZhCfQbxFRVU>
X-ME-Received: <xmr:fkR7YbzaKaHPYLsdaY4HIzq8zTCotH9inWG3YIquN8dN6oObpsi-yW_3G66yqQ2xVvXCnaduv0f1GKc6roNs7bCYMwRecTUE5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdeggedgfeeiucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvufgjkfhfgggtsehttdertd
	dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
	hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpefhhfeuvdeviefhfedtud
	effeeuteeihfdvueelveelkeffveefudeiueegheehgfenucffohhmrghinhepghhrmhhl
	rdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
	eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:fkR7YTN2iiu7ztuo1WQI4P4zd_DAWh8Tcv4fv-NXHChBUPdEtiCJtA>
	<xmx:fkR7YQ_qbV32Zevy5Q1Jw-F5d8SRuXftn4OZ72S-Q1dbCV6ImvnCLA>
	<xmx:fkR7YbW-0NA33DREjWXVrQjAlp8oJ9RT1nvGEntk1Anj3VIhPlb-YQ>
	<xmx:fkR7YZLIz7F4TbBAwnfM-iGxr9iLzRh5f_dWALppT0P-KFz0tnNqnA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 28 Oct 2021 20:46:53 -0400 (EDT)
Date: Thu, 28 Oct 2021 17:46:53 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I run an accessible version of linux under windows?
In-Reply-To: <AD23363F-591E-4B0A-9992-841F3150EC31@gmail.com>
Message-ID: <5b11f885-d643-30ba-6298-148de7e576c7@hubert-humphrey.com>
References: <23ab7b29-ac4-63ed-cdb3-257bb4417e9b@hubert-humphrey.com>
	<AD23363F-591E-4B0A-9992-841F3150EC31@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, I can only answer your first question, you can grab grml from
https://grml.org/download/
As it says on their site, it is Debian Linux.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

