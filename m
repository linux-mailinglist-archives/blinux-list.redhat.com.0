Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5261F2E8F3B
	for <lists+blinux-list@lfdr.de>; Mon,  4 Jan 2021 02:38:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609724297;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GKKWMuPPjoXrt+JwZKsJfasAGjx16EoBfR/TLLqmd6w=;
	b=ZwSU0RVXvgHd7UPYs0KU4yytkpZrPEeo0eV1AfXOTVUVrpyHAehwM8cSd3Kq/uhQ97COV2
	yQpVC0hrdDpdS1PnItp7ZB/mY/dMN13SPuJ0sW1lrbOW5AqGeIQNHWBKecuptbxEV9vPwe
	gX04DnhLK9kOsVwqJLOz7N9dh7TevJk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-Jipk1ORjOUGXmGTbqujRVA-1; Sun, 03 Jan 2021 20:38:15 -0500
X-MC-Unique: Jipk1ORjOUGXmGTbqujRVA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97DD61005504;
	Mon,  4 Jan 2021 01:38:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D232100AE2E;
	Mon,  4 Jan 2021 01:38:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7AF104A7C6;
	Mon,  4 Jan 2021 01:38:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1041bxjN017923 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 20:38:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D4CC57C52; Mon,  4 Jan 2021 01:37:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF4A19D460
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 01:37:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A79BE101A560
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 01:37:57 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-42-BNdUEx8bMpeUdkuDcwhFlg-1; Sun, 03 Jan 2021 20:37:55 -0500
X-MC-Unique: BNdUEx8bMpeUdkuDcwhFlg-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4D8J4h1n7bz21Zl
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 01:31:32 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id 24M-yfRUG9Za for <blinux-list@redhat.com>;
	Mon,  4 Jan 2021 01:30:44 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4D8J3m2Sm6z21dN
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 01:30:44 +0000 (UTC)
Message-ID: <20210104.013032.202.28@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Re: speech output log
Date: Sun, 03 Jan 2021 19:30:32 -0600
MIME-Version: 1.0
In-Reply-To: <27F48B51-66BA-41E1-A7B2-0779AF30677B@gmail.com>
References: <d79b90e0-c23c-20e9-7313-d54c5cddbef8@gmail.com>
	<27F48B51-66BA-41E1-A7B2-0779AF30677B@gmail.com>
User-Agent: POP Peeper Pro (5.0.3.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1041bxjN017923
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It's a media streamer. Think baby plex.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sun, 3 Jan 2021 19:17:29 -0600
Subject: Re: speech output log

> Curious, what is Kodi?
> 
> > On Jan 3, 2021, at 7:06 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > 
> > So I'm using kodi on my laptop and need to get messages that kodi screenreader outputs. Is there a way I can find this log because I have no clue what to monitor with tail.
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> > 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

