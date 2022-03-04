Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1504CDB41
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 18:48:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646416086;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kKoDPlhZ/iPdnVMxqoiV6+nur0KKq0Mykqm+cK3AZ0Q=;
	b=XeJuumUuP8Upe0NGdW8kJc/JkrHfKedNJDPCqnSNH4SMeWFaTCooSNe5pB8i5A1mKuEWzD
	YH3F+/c2gtKONawJ5ifPntW+85qm9DwnCIAoMD5nyssxxNXjp9HM1s7eXyS1G/0eMyi7EB
	k+qL3JnOyNdEksEuVjW6KMFqXwp1jzg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-541-A4DIM-U7OTukJ0U1wUo6Pg-1; Fri, 04 Mar 2022 12:48:05 -0500
X-MC-Unique: A4DIM-U7OTukJ0U1wUo6Pg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 673431091DA1;
	Fri,  4 Mar 2022 17:48:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E092106F942;
	Fri,  4 Mar 2022 17:48:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3FC154ED27;
	Fri,  4 Mar 2022 17:48:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224Hlt3N026197 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 12:47:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D80A320239EA; Fri,  4 Mar 2022 17:47:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3AD420239E5
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:47:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB21F3C01C27
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:47:49 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-452-hvS_VYPmNdalbebcwdha2Q-1; Fri, 04 Mar 2022 12:47:48 -0500
X-MC-Unique: hvS_VYPmNdalbebcwdha2Q-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 108931BBE00
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:47:47 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id T96lWA5cla6D for <blinux-list@redhat.com>;
	Fri,  4 Mar 2022 17:47:45 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:8616:d376:ace:323b]
	(2603-6080-6302-e002-8616-d376-0ace-323b.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:8616:d376:ace:323b])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id B1B421BB099
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:47:45 +0000 (UTC)
Message-ID: <07b9783c-50fe-1419-91d6-584f828352d7@free2.ml>
Date: Fri, 4 Mar 2022 12:47:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<f49b0dd9-8fe2-9ec1-1d49-ff5ce164ded9@free2.ml>
	<9a21f28f-c957-cb53-af3e-8c0ad9f24c5@panix.com>
	<dee2c9a3-7810-1fad-c87c-16007ad8e739@free2.ml>
	<e9a751f1-c67b-c8bc-24ff-f542ab86c8f@panix.com>
In-Reply-To: <e9a751f1-c67b-c8bc-24ff-f542ab86c8f@panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Good luck on the transfer and I'll be interest in your progress along that
> path since I may be taking that path myself.


Well, I have successfully completed the transition, but I did need to 
keep a couple of things. With that said, my phone works pretty well, and 
I haven't had any problems using any of the apps I need, with one single 
exception that I was able to fix using an unofficial but usable 
configuration that successfully passes that application's test.


> I do need a functional screen reader on the phone though since I'll likely be installing whatever goes on the phone and maintaining it myself.


This is where I needed to keep a couple of things. Talkback is in 
F-Droid, but putting it on the system before first boot for some reason 
does not make it show up on the phone. Also, if you need a screen lock 
pin or password, you will be unable to use RHVoice or Espeak, as neither 
will speak before the screen is unlocked for the first time. Only 
Google's text to speech app will do that. So I sideload Talkback and 
GoogleTTS from the current MindTheGapps package before I boot the phone 
for the first time. The only trouble I had was due to the setup not 
working quite right, so I had to tap the vision settings in the lower 
right corner, then start tapping from the center near the bottom of the 
screen until I heard a click, then tap from the center near the top 
until I heard another click, then tap near the bottom at the right. Then 
Talkback worked normally for me. It's a more involved process, but it's 
not hard to get going, since things are either at the top or the bottom, 
so I didn't have to fumble around trying to blindly tap around the 
middle or other varying locations on the screen. The key things here is 
that sideloading espeak will work for the setup, but will not speak 
until you unlock the screen if you use a pin or password, and RHVoice 
will not work at all during the setup process, since it can't find its 
voices if they are sideloaded along with it, because newer Android 
versions do not like to let multiple packages work together, not even if 
they are system apps.

> What app store or app stores are you getting compatible apps from?


I have been using F-droid, which comes with MicroG, and for Google Play 
Store compatibility, I'm using Aurora Store, and sideload it before 
first boot along with Aurora Services to install apps without asking me 
stupid questions like "Do you want to install this app?" Aurora Store 
seems to have bit the big one at least temporarily ... it stopped 
working last night and hasn't regained consciousness as of now, so in 
those cases, there are apkmirror.com, apkpure.com and aptoide for Google 
Play compatible apps. I do still need more than I would like of those, 
since I do still need to know when to get off the bus and still need 
alerts from my banking app, I have some other apps that I'm actually 
trying to get away from but can't quite do it so completely as I have 
been able to wrest my phone away from Google itself. So this is where 
the Aurora Store comes in, along with the other websites and apps I 
mentioned, although I recall seeing a Google Play compatible F-Droid 
repository that I may be able to add there instead, especially if the 
Aurora Store did just buy the farm, which seems unlikely, but I don't 
like the length of this downtime. I hope some of this info on my 
experiences helps you or someone else, and please do feel free to ask me 
any questions about how to get LineageOS for MicroG, or even the 
official LineageOS, up and talking.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

