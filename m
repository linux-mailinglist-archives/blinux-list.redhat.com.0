Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C6545F51D
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 20:20:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637954415;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TLI7luI5y5gm4/R6cLRKxasM3N7WOtulN1cLJ2QNqWs=;
	b=J6C0AlK6HO88cfaLssZ7NPG3isYeXphgyKVd2oCfRDaJGjtzGuV7tccgymKDpvd+pEqnB+
	vPpPzhli2oYAzgVHhl6Ry4fBlpblFpSdI3dBpzFTAD2hV1z75VAvlKBJ+yljyTbedF21wK
	FIsEgXTB0Ygo8EDj8vFmAxmYgi9bS44=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-341-xqv1_5r6NDueYQ1M_kRL6Q-1; Fri, 26 Nov 2021 14:20:11 -0500
X-MC-Unique: xqv1_5r6NDueYQ1M_kRL6Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0FB6A1006AA4;
	Fri, 26 Nov 2021 19:20:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C4EE19C79;
	Fri, 26 Nov 2021 19:20:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB8C61809C89;
	Fri, 26 Nov 2021 19:20:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQJJsdZ010377 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 14:19:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5F70A40CFD13; Fri, 26 Nov 2021 19:19:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A84B40CFD08
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 19:19:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43BAA85A5B5
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 19:19:54 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-447-nnpedkztMCaR7oTA02pvwg-1; Fri, 26 Nov 2021 14:19:51 -0500
X-MC-Unique: nnpedkztMCaR7oTA02pvwg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 9A702620F8C; Fri, 26 Nov 2021 19:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 99D37620210
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 14:19:49 -0500 (EST)
Date: Fri, 26 Nov 2021 14:19:49 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: OT: kind of, headphone search source?
In-Reply-To: <6235b7a3-ed4e-9795-c152-375142fff735@gmail.com>
Message-ID: <Pine.LNX.4.64.2111261414060.105674@server2.shellworld.net>
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
	<062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
	<091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
	<b2d6ddcd-2ef7-1425-de0e-78a0c8d5697c@slint.fr>
	<97f47bb7-fcaf-aaf9-0732-0592fd341f18@gmail.com>
	<54a22fdb-8348-346b-170c-8e6f54ad7fbe@slint.fr>
	<6235b7a3-ed4e-9795-c152-375142fff735@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

Hi folks,
Let me ask this clearly, or as clear as possible laughs.
what I am seeking, even if a store that I need not buy from, is a resource 
where I can choose
  a set of headphone specifications, and get a list of prospects.
I use them in different environments, and have some rather detailed needs.
Being forthright I often find a match and keep buying them as long as 
possible, making it really depressing when a pair gets discontinued...I am 
talking about you JVC ha-s44x *sniff*.
Ahem, in any case ideas for a location where I can  shop with this kind of 
detail?
Thanks very much,
Kare



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

