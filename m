Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CEFFC362CAD
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 03:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618622676;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0mrC4bnzK+OfTBwX1A9zXtJac0Ccge12cMs+zFBwAhI=;
	b=IwOJcusD6RCVzIKDOSjo6ad32BsqXvYgXJ2Kmaor3UpYtbFlxN/ULVkNUvtaJpKEHKy0IW
	GOGTJt5ZDBfH+2Zx4zmDPnXXOwPJymNix6ixIq0XtuN2Y1zwXpZXGeLlhcOPoK9lwZXj1L
	bPLLEuNJ3sUHUnGAPfwEg+xVM6JVmFY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-369-wVBqnrvsMrSieR1NMLo2QQ-1; Fri, 16 Apr 2021 21:24:34 -0400
X-MC-Unique: wVBqnrvsMrSieR1NMLo2QQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A3888030A0;
	Sat, 17 Apr 2021 01:24:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 253295D6D3;
	Sat, 17 Apr 2021 01:24:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B3011806D0F;
	Sat, 17 Apr 2021 01:24:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H1LXp0025614 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 21:21:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F01F010547E2; Sat, 17 Apr 2021 01:21:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBBA210547DB
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 01:21:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3464805F47
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 01:21:30 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-179-NKzF1sUUMu25R9uCa000vg-1; Fri, 16 Apr 2021 21:21:28 -0400
X-MC-Unique: NKzF1sUUMu25R9uCa000vg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 7AD66621C36; Sat, 17 Apr 2021 01:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 77CFC6217FD
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 21:21:27 -0400 (EDT)
Date: Fri, 16 Apr 2021 21:21:27 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
In-Reply-To: <1271a629-722-90e7-f65-5994c8fcf0d6@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2104162120250.2353670@server2.shellworld.net>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<Pine.LNX.4.64.2104162050360.2352872@server2.shellworld.net>
	<1271a629-722-90e7-f65-5994c8fcf0d6@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Chime,
Running a text editor is not graphical dependent..or that should not be 
the case.
Kare



On Fri, 16 Apr 2021, Linux for blind general discussion wrote:

> Hi Karen: I think SL only runs in graphical, so he is most likely running 
> much different tools than we are.
> Chime
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

