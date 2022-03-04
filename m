Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1824CD9BA
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 18:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646413629;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FtlTbu0OmGqaOu+hzacx7meFVDoc7ojrJwo1FmVWUZo=;
	b=FSOHK0ZXLwGboJU48QTNdmhaOqS4or09STowtRCSUxYSZ+3ixxuBLrAyBRrnWpGd2mFwaQ
	BgYRxIqKNHCiLIb/u7ZCf7KfV4CB+J/GMoAT3jxTVUrA9CG0TWUQIym61ybEjCU+eRCrNg
	W2F3NXO6VV8m/fEwaFYdUWMdaQA6J+w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-479-1FrWzroDNgOF2b0p3crtjg-1; Fri, 04 Mar 2022 12:07:05 -0500
X-MC-Unique: 1FrWzroDNgOF2b0p3crtjg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 194A1180FD72;
	Fri,  4 Mar 2022 17:07:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 021B584795;
	Fri,  4 Mar 2022 17:07:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C593B1809C98;
	Fri,  4 Mar 2022 17:06:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224H6sbN023031 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 12:06:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1A36EC3597A; Fri,  4 Mar 2022 17:06:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16452C35979
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:06:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CEBD33C01C19
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:06:53 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-400-O3VqXDQ4Noacep3VQBe9wQ-1; Fri, 04 Mar 2022 12:06:51 -0500
X-MC-Unique: O3VqXDQ4Noacep3VQBe9wQ-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 5A1871BBE00
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:06:50 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id uP4fk9P-zU0n for <blinux-list@redhat.com>;
	Fri,  4 Mar 2022 17:06:50 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:8616:d376:ace:323b]
	(2603-6080-6302-e002-8616-d376-0ace-323b.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:8616:d376:ace:323b])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id A07B61BB099
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:06:49 +0000 (UTC)
Message-ID: <dee2c9a3-7810-1fad-c87c-16007ad8e739@free2.ml>
Date: Fri, 4 Mar 2022 12:06:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<f49b0dd9-8fe2-9ec1-1d49-ff5ce164ded9@free2.ml>
	<9a21f28f-c957-cb53-af3e-8c0ad9f24c5@panix.com>
In-Reply-To: <9a21f28f-c957-cb53-af3e-8c0ad9f24c5@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, it's time to stop gmail working on the phone and to also disable it.


These days I mod my phone to disable Google as completely as possible. I 
no longer use Gmail on the phone, and I no longer even use Google Play 
Services. I recently broke a phone that was compatible with LineageOS 
for MicroG, and intentionally purchased the same make and model so that 
I wouldn't even have to start with a Google account on the new phone. 
It's time to say good-bye to big tech, and this is my start in that 
direction. I do keep Gmail in Thunderbird for now, because it works 
there still, and some stuff still comes to that email, but I'm 
transitioning to self-hosted open source stuff as completely as 
possible, which it seems can be faster and more complete than I 
initially thought.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

