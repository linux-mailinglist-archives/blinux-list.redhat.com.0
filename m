Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F304CDD02
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 19:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646420102;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ft2i8pPS/hubjkn1VvMATxD2iWdxb1un1ESApBVpdKQ=;
	b=L8AUv4Rr3PZGPbbHwh4rKAS5GG9Ewg3VZuD6s4NolmeJ5SfscBMTr5OZfqdkDWvnPAnWiG
	Zjc5WZ0TaSPyJrd5eXQIdl2U6GecpT4qf8r331zbWnNxdApQ2XGeuNnyxEKN2z6rEy1MlI
	rqponTaxWI9B2mB5DGyrdqM1b4HHPH0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-h-aZhKlqNPmfodyuQ4XFOQ-1; Fri, 04 Mar 2022 13:54:58 -0500
X-MC-Unique: h-aZhKlqNPmfodyuQ4XFOQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5DDF21091DA0;
	Fri,  4 Mar 2022 18:54:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B3F53483D;
	Fri,  4 Mar 2022 18:54:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 981841809C98;
	Fri,  4 Mar 2022 18:54:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224IskHq031437 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 13:54:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C2C2B141DEDD; Fri,  4 Mar 2022 18:54:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEF8B141DC2A
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:54:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6B9E85A5BE
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:54:46 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-244-B1sUiLQIOsW0gCEKDR8odQ-1; Fri, 04 Mar 2022 13:54:45 -0500
X-MC-Unique: B1sUiLQIOsW0gCEKDR8odQ-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 925211BBE00
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:54:43 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id IgYcHqG8c1jQ for <blinux-list@redhat.com>;
	Fri,  4 Mar 2022 18:54:43 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:8616:d376:ace:323b]
	(2603-6080-6302-e002-8616-d376-0ace-323b.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:8616:d376:ace:323b])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id E78EF1BB099
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:54:36 +0000 (UTC)
Message-ID: <b679ee67-9e7d-f482-8bb1-f3b9ce9f274f@free2.ml>
Date: Fri, 4 Mar 2022 13:54:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<Pine.LNX.4.64.2203041303520.273578@server2.shellworld.net>
	<9c284d34-9e1c-a3ac-72fc-ba0c041877ec@gmail.com>
	<CAO2sX33E7R760BEc4kn+F5U7tNCWijUSPc_PbK9-OQ+pJ1psfg@mail.gmail.com>
	<518c6e49-0315-d3ac-1586-0a2f6c99c7d7@gmail.com>
In-Reply-To: <518c6e49-0315-d3ac-1586-0a2f6c99c7d7@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So yes, I'm right with you on the hunt for a new email provider. Time to 
forward all my email to this new provider

Just a comment that I made the personal decision not to forward 
anything, but just to change the email address I give people and change 
it on the newsletters and email lists I care about. Everything else, if 
I do lose access to it, is probably stuff I didn't really care enough to 
change or no longer sends me mail, so I decided that in that event I 
just wouldn't worry about it too much. That was a personal decision I 
made though, so if you're more comfortable forwarding everything, giving 
yourself hopefully enough time to make a more complete transition, by 
all means do that. This just gives me the opportunity to see what is 
still coming to gmail so I have the chance to decide on a case-by-case 
basis whether I want to change the address where they send me email or 
just let Google drop it into the ether after I delete my account.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

