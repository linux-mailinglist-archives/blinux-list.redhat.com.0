Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3DCB6363165
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 19:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618680353;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=35pPvxq8R/lQLCa6UwhJu4Cx7v/+zaXmFg0kPgzcHOE=;
	b=A1s/5ibFd1rc++gcZaxKs/UAdxcthg0MNzoRFn93Wi32u4BbSz+xWXH2fbwZ7QnwQmBe+M
	lW/1QAR/Or7Ibrmy12ukNvI6Y6EzExQcjk/6BDCHdTCruWn3HBA2C4pweA2FPQ7/DW0ATE
	Ol8LPkkQI6hR+JKfzc4gPUiFcFf8rQs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-538-RzyX7_eoOeS_1_n77JrFhw-1; Sat, 17 Apr 2021 13:25:51 -0400
X-MC-Unique: RzyX7_eoOeS_1_n77JrFhw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9FEDA18A08BE;
	Sat, 17 Apr 2021 17:25:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EDA119C44;
	Sat, 17 Apr 2021 17:25:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 23A651806D0E;
	Sat, 17 Apr 2021 17:25:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HHOEaT004522 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 13:24:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 81CA41111421; Sat, 17 Apr 2021 17:24:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DFA01111420
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 17:24:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4EF88027E6
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 17:24:10 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-132-dRBNoMqWOaCe_cvjID_E4A-1; Sat, 17 Apr 2021 13:24:08 -0400
X-MC-Unique: dRBNoMqWOaCe_cvjID_E4A-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 39B6B621C2C; Sat, 17 Apr 2021 17:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 38FE162022F
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 13:24:07 -0400 (EDT)
Date: Sat, 17 Apr 2021 13:24:07 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Gmail and attachments (or...how do I?)
In-Reply-To: <590d3aa1-b8d5-5999-63a3-f94bff3d694e@gmail.com>
Message-ID: <Pine.LNX.4.64.2104171321320.2504722@server2.shellworld.net>
References: <590d3aa1-b8d5-5999-63a3-f94bff3d694e@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oh i do this all the time using basic html with gmail in  lynx.
Cannot speak for yahoo,
But if you can access the basic html aspect of gmail, downloading items, 
one  at a time of course, is no hardship.
Just my experience,



On Sat, 17 Apr 2021, Linux for blind general discussion wrote:

> So SL got me thinking..
>
>
> Aside from Thunderbird with the extract attachments plugin...is there any 
> other way to download a lot of attachments from, say, Gmail/Yahoo/etc
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

