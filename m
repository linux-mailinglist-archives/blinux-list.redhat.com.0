Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5C645DD1C
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 16:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637853343;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8/p3AyT+oRTJXu53LLekN3Bl8zFLvv4rVDkcqTeUXJo=;
	b=OvyV9gxGEMf14jsNkBtHcqUBazu5RHg+XLlf/+4FYxle4LRbPW855F6teebFJ/3q4oDaFE
	CEDNpwE+dEZhntcmduOzgPXPgTdLFZKdIfJiC4os4a01QCYtkNcwuAcaSz/cenwfycG+6V
	5K/M7sqvGhtsA1IthVjBoRHt2C66HMQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-9-uHR1AgprOPiuF8fGUvoHtQ-1; Thu, 25 Nov 2021 10:15:40 -0500
X-MC-Unique: uHR1AgprOPiuF8fGUvoHtQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F62781CCBA;
	Thu, 25 Nov 2021 15:15:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A625BADF9;
	Thu, 25 Nov 2021 15:15:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 36E8D1809C89;
	Thu, 25 Nov 2021 15:15:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APFFSBW011469 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 10:15:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D224D51DD; Thu, 25 Nov 2021 15:15:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC89551DC
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:15:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF2EA802A5E
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:15:25 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com
	(wout2-smtp.messagingengine.com [64.147.123.25]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-521-l3JUuZNBNs2DRZqqUAgWZA-1; Thu, 25 Nov 2021 10:15:23 -0500
X-MC-Unique: l3JUuZNBNs2DRZqqUAgWZA-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 4FFF232008FA
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 10:15:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute3.internal (MEProxy); Thu, 25 Nov 2021 10:15:22 -0500
X-ME-Sender: <xms:iaifYXsntE32WctYqF6D9NBCX-gumkMYfQEo9c86UMi0sxhluaPyNg>
	<xme:iaifYYdth0iwDXmgkxRgIIAHbX-0z94NfdOC-v43SnyZpcu9zBxG7idFjyKBcXyfg
	FlZykcGgC-XoAqJJX8>
X-ME-Received: <xmr:iaifYaxE5Y9OEsOx_9elnp7Gl_MaiQRkqkrOOxL_nJcGZogsBcr1LsgXrepBTLSVFurL9rPHP1ascyfGh12sHj-6NUqx9TxmLw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrhedtgdejgecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghr
	thcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrg
	htthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheefhffh
	vdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
	gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:iaifYWMxxPsrWsmkabBx52TUg93W4Z6scXU96_I107dWCe7ZtE2OKA>
	<xmx:iaifYX-9bxT6rgblN8W1nzg1lv0tq2yg98LtCXFg_0DAC5SJvHzqbA>
	<xmx:iaifYWVlzmv_2McxTLiB8bDhhZN7pUEumb_Cy0z-wJ9tqjZ8em_bFw>
	<xmx:iaifYUIqw5OP_Cl0gCOZmcwa_cduiR--nn7ZdKWobLnFEl8bptDFIQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
	<blinux-list@redhat.com>; Thu, 25 Nov 2021 10:15:21 -0500 (EST)
Date: Thu, 25 Nov 2021 07:15:19 -0800 (PST)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Converting epubs to Plain-Text?
Message-ID: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
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

We interrupt these Fedora discussions to bring you a separate subject.
I have several, maybe 18 ebooks in an epub format, from BookShare-and-Usenet. 
In looking around, an only tool I can find is "ebook-convert" part of a Calibre 
package to convert these. However, following cryptic instructions in its 
man-page, as well as what I see in duckduckgo, I am getting no where. Are their 
other better tools I need to grab in a Debian SID console? In addition, I 
really would like to convert all of these at once, in a batch. Thanks so much 
in advance for any-and-all guidance. We now resume our regularly scheduled 
programming
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

