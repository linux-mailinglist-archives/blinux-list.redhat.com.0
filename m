Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D12345DDC0
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 16:42:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637854927;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rYpVRyspxexfQTuPGMEbgL2EfthAEig/+UU5Kqt811I=;
	b=icMJFUaAaDN7V+qnbnzlyHElV2VbiQcddHA0rUncPpumNxL8IoLvHu5e+Hh1lLG2DxK4AU
	oyhfQhVxqfAE/tn3oy3G2G4qqQQKVjofTyxojpYf9ngOkhldX5dqcnTjTvrYsINTAIdlGl
	zsIKfLmWbOXP6HHvyelcphLT3DZ7GGU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-229-PASmzXTPPHaFXL4XBSnLLQ-1; Thu, 25 Nov 2021 10:42:06 -0500
X-MC-Unique: PASmzXTPPHaFXL4XBSnLLQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FFE264083;
	Thu, 25 Nov 2021 15:42:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2E9260843;
	Thu, 25 Nov 2021 15:42:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC4871809C8A;
	Thu, 25 Nov 2021 15:41:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APFfr5s014372 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 10:41:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BB1EF2026D48; Thu, 25 Nov 2021 15:41:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B60A42026D46
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:41:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E592802813
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:41:50 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-305-2XZPuyGUNBySYHNiePQLDA-1; Thu, 25 Nov 2021 10:41:48 -0500
X-MC-Unique: 2XZPuyGUNBySYHNiePQLDA-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 817E13200E5D
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 10:41:47 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Thu, 25 Nov 2021 10:41:47 -0500
X-ME-Sender: <xms:uq6fYThJFWmukdyw0M6T4Ps6eZeDQtZqrxsxve581_AatJ4VdKp7Dg>
	<xme:uq6fYQCZbjXSWuzdhmJ5Kes3BgVPuSs6Cj7gzwdxksPe9pSoA2TGnAtID7stiNc90
	Zf-lwzLXMGg1PAhjfU>
X-ME-Received: <xmr:uq6fYTF97SCQEvPNzAKEWk1ulPZXzwcEmktK4sDo-KKhwEAMawG2zy_Buntf2rC0BEjy2axWiTwzEsGRyyLhLT_SKMd2M9NG8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrhedtgdejlecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepffehtdfhvddvueeuieehvd
	efffeutdegueduhffgleetledvuddugfelkeevtdevnecuvehluhhsthgvrhfuihiivgep
	tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
	hhrhgvhidrtghomh
X-ME-Proxy: <xmx:uq6fYQTAp4_kdM7oJ2Fj5jezcHrNgrlSYaZedOmUH2QLYQDaBo7M9w>
	<xmx:uq6fYQwe5JgtMct_FNuy5YFQS8D4vos0La5S7JHST-dKkBLuiBqJzQ>
	<xmx:uq6fYW4vFqgWTSYXRsxMbO1qhPp3hrq4SRw3lIWYaVUOdJO9sd5tCg>
	<xmx:uq6fYdvrDCFZVTHIoXVCccs6XMF5__b0wa_IWLBmTPS336x_prigYQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 25 Nov 2021 10:41:46 -0500 (EST)
Date: Thu, 25 Nov 2021 07:41:44 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting epubs to Plain-Text?
In-Reply-To: <6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
Message-ID: <946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you, but if I just run that command with even a single dot epub, it once 
again provides usage information, such as
ebook-convert peter-bergen-the-rise-and-fall-of-osama-bin-laden.epub
Usage: ebook-convert input_file output_file [options]

Convert an e-book from one format to another.

input_file is the input and output_file is the output. Both must be specified 
as the first two arguments to the command.

The output e-book format is guessed from the file extension of output_file. 
output_file can also be of the special format .EXT where EXT is the output file 
extension. In this case, the name of the output file is derived from the name 
of the input file. Note that the filenames must not start with a hyphen. 
Finally, if output_file has no extension, then it is treated as a folder and an 
"open e-book" (OEB) consisting of HTML files is written to that folder. 
Back again live, if it were guessing, it should have converted this, so please, 
what am I missing? I even have a script to knock out all spaces in file names, 
replace with a dash. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

