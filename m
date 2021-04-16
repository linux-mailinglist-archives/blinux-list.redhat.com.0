Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D2344361AD5
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 09:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618559504;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b9Oerknb4wFqNsfKEdduRhPCkP4XAbw4bDfBEFiSffs=;
	b=WgpmbxKaG5dEPPSXUd5bsrBOTMSsztdR8U0MtdRPXrjvtZj4UGGGDbKj8jOv8dtQ2BZTyt
	WeR5B0Gfy1HThU2tn9EBTn9UyjpqEqnrf+MPScJgDl6k5rk57vSRQTCSzVypBGog85bbFv
	XoCANqBBZlkqkC/3ED1c4iXsHdukgtQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-555-onZBVd2dPkGaVk4lQ91AQg-1; Fri, 16 Apr 2021 03:51:42 -0400
X-MC-Unique: onZBVd2dPkGaVk4lQ91AQg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC6168030D0;
	Fri, 16 Apr 2021 07:51:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C530E669ED;
	Fri, 16 Apr 2021 07:51:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 580FD1809C82;
	Fri, 16 Apr 2021 07:51:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13G7pVbO024812 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 03:51:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 88CAF20FD3DF; Fri, 16 Apr 2021 07:51:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 834FF20FD3D8
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 07:51:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9BBE8026D4
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 07:51:28 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-427-YdGFpsBKPhibloeAtiVhSw-1; Fri, 16 Apr 2021 03:51:25 -0400
X-MC-Unique: YdGFpsBKPhibloeAtiVhSw-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.4] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id E546E602E9
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 07:42:12 +0000 (UTC)
In-Reply-To: <161854956380.6.15897609673094958042.5900847@simplelogin.co>
References: <161854841366.7.5044640704122711519.5900574@slmail.me>
	<161854956380.6.15897609673094958042.5900847@simplelogin.co>
Subject: Re: Would you be interested in having natural sounding TTS voices by
	Readspeaker on Linux? demo link included
MIME-Version: 1.0
To: blinux-list@redhat.com
Message-ID: <161855893277.9.11600533240868291650.5907711@slmail.me>
Date: Fri, 16 Apr 2021 07:42:12 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5907711
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hey this is SL again. Wow, that is really weird, it did not show all jumbled up like that on my end. Only shows that way once it sent and posted to the list.
Very strange, lets see what I can do to fix this, the spaces are all normal until it sends.
I'll try again once I figure out whats going on with the sending.
Sorry about that, don't know why its doing that.
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

