Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 65117326E87
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 19:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614448908;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wxIY3zDSBTFwNuV1UQPyizDzMVNaDLvc4xOAXo2C5BY=;
	b=CC0yhWckFbeQZnMDpaM0s8NUCvprSLbGI6GNAhlz/20JIi1oVZ4+b/wBvrDQj6aLD9Hsuu
	tvvuDfl/xUZL4Iz4snrZJC8rVetXNiVPofk5kYayXUijcxhplt+zrkJ2OTMO+0GyMyrgbL
	uWZj3aZmmnNseDgAuu4KbtLeceoAbi0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-Al5W3kaaNoyhIdnu691oIA-1; Sat, 27 Feb 2021 13:01:46 -0500
X-MC-Unique: Al5W3kaaNoyhIdnu691oIA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D3E1803648;
	Sat, 27 Feb 2021 18:01:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD42160C70;
	Sat, 27 Feb 2021 18:01:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 45A3818095CB;
	Sat, 27 Feb 2021 18:01:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RI1DUj019520 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 13:01:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E3261202A424; Sat, 27 Feb 2021 18:01:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE1052026D46
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 18:01:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4DF9A800883
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 18:01:10 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-45-yLGWPOLDMlqv7M90ALguzw-1; Sat, 27 Feb 2021 13:01:06 -0500
X-MC-Unique: yLGWPOLDMlqv7M90ALguzw-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.6] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx2.simplelogin.co (Postfix) with ESMTP id AA8E25E1D0
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 17:55:48 +0000 (UTC)
In-Reply-To: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
Subject: Re: Running Android Voices in Linux?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161444854854.8.6967526014575932372.4265918@slmail.me>
Date: Sat, 27 Feb 2021 17:55:48 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 4265918
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Chime,
I am also interested in more natural voices for Linux. I don't have experience with Android so I can't offer any suggestions, but I'd really like to see more options become available for natural TTS voices for Linux. I use Ivona on Windows and I've been looking around for any way to get Ivona on Linux. So far I havn't had much luck with my research but it sounds like you might have found a possible option if you or anyone else can figure out how to make it happen.
Personally I am not a fan of Google products in general so I don't use Android. But if there is a way to simply use the Android TTS voices without any linking to Google, then I'd be really interested in that. Do you happen to know if Anbox would make it possible to run the Android voices locally on the Linux computer similarly to how you can have Ivona voices locally on Windows without it linking to any Google services or servers? Or does Anbox need to be connected to a Google server to operate? I'm only interested in localized options.
Anyways, I wish I could give you some tips but I just don't have experience with this, just wanted to let you know that I too am interested in more natural voices for Linux besides the Nuance voices through Voxin. More possibilities for more natural voices would be very much appreciated.
I'd love to know if you have any success with this.
Best of luck,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

