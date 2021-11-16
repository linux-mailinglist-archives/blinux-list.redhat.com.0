Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 601EA453CB4
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 00:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637105429;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A4K5VHyczJLBUJms7VaO075pRnVj49oEsZdCXxXoTgQ=;
	b=I35sfgI8VTuz4LKe0cXVDinLKVvkMBKVmsfBh1YApTuN+Bgv4FjYBhE/BpqCY8DVtviUnR
	vmIrZLuIC6wQ8nQmiNcwLYLFa3kuAU6E9MVKSaWvtXlGI3iBbI8+RH24p+/CYu91Ry+QGe
	BBDnNs3X/ZkZmnQy/Wqo1SwrSIm7oa4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-YmKmgIBINLSlbMmrlDp1KA-1; Tue, 16 Nov 2021 18:30:25 -0500
X-MC-Unique: YmKmgIBINLSlbMmrlDp1KA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9366100CC87;
	Tue, 16 Nov 2021 23:30:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3360167843;
	Tue, 16 Nov 2021 23:30:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 96E654A703;
	Tue, 16 Nov 2021 23:30:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGNTa87021804 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 18:29:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8861F1121318; Tue, 16 Nov 2021 23:29:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82F541121314
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:29:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABA4C185A7B2
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:29:24 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-357-JY-p4v1mO5GRxzfjPDmjyw-1; Tue, 16 Nov 2021 18:29:23 -0500
X-MC-Unique: JY-p4v1mO5GRxzfjPDmjyw-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id E1BBE5C017E
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 18:29:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Tue, 16 Nov 2021 18:29:22 -0500
X-ME-Sender: <xms:0j6UYXg_AB3MmEHWHHueBDqokfNdm0o1tDTR4xRZGjWdrpMeChUwgg>
	<xme:0j6UYUDytmwijAKXLabAeB6pCiz5jsAV-T8S2cVE6BKIzkjh6VLp0yum0OkKT9kV8
	TnEkMjvrxWPt3WWnPc>
X-ME-Received: <xmr:0j6UYXH96nHi0w4_IxVIXDaYBL91ngipZkQX4UP3v-URm8UU99F1sG2J7K6uvkOvuS2iX2GRN1LARvp1Ht_4ORwFsOr8I5nfMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrfeefgdduudcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffujgfkfhggtgesthdtredttd
	dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
	uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnheptddugedtfeeutdevfedtve
	ffieetledttdeklefgvddttefgtefhueekffevhfeinecuffhomhgrihhnpegthhgrnhhg
	vghsrdguvghvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
	homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:0j6UYUTb0IeB2M52SLeGPg7R1bG5uv3OlFjJPlDp2mSyKfT_YRTSiA>
	<xmx:0j6UYUw44M_htPf4IRbVi3f-UXX-PpG9KCIm3_uuVDubLS8KuRyitQ>
	<xmx:0j6UYa7cAkSigGFXrOqjIIw_d9EWrjjZ_7XYHSQmWUOAE1_jkjgzNA>
	<xmx:0j6UYRstD9fPaWkaI1YiAGvR9HM8GPn_tD1MuBy7Y-UrsMzh4znM3g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Tue, 16 Nov 2021 18:29:22 -0500 (EST)
Date: Tue, 16 Nov 2021 15:29:21 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Correcting an sd-card?
In-Reply-To: <434ecf83-5f19-cafd-22ff-2c05cd388068@slint.fr>
Message-ID: <d7c7078-3e63-abc2-d91d-fcfd5045b1be@hubert-humphrey.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<434ecf83-5f19-cafd-22ff-2c05cd388068@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

OK, thank you again Didier-and-Kyle, about to run the command, however, neither 
apt nor aptitude can find that dosfs-tools.
OK, here are the results.
sudo fsck.fat -a /dev/sdg1
fsck.fat 4.2 (2021-01-31)
There is no backup boot sector.
   Auto-creating backup boot block.
Created backup of boot sector in sector 6
Label '' stored in boot sector is not valid.
   Auto-removing label from boot sector.
Dirty bit is set. Fs was not properly unmounted and some data may be corrupt.
  Automatically removing dirty bit.

*** Filesystem was changed ***
Writing changes.
/dev/sdg1: 674 files, 981932/8190030 clusters
Back again live, that media/sdg1 is not mounted, so that must have happened 
during that opperation. I suppose if I remove the card-and-insert, it will 
mount again? Also, I could certainly try in the BookPort-and-see, but this was 
a nice learning experience, rather than waiting til Sunday for my Linux expert, 
who by the way setup an auto mount for these sd-cards. Thanks again
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

