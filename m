Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5D04CD53A
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 14:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646400847;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IJdRbK0cQrn/ruWYGwDgOK4B+3hLElP91VM+VC9meUA=;
	b=CQM4EFm2NIHv7OHnNYpF7MllNuf8dqkiE9mq73bjSBxhuXsVD6O4DTKGXNRn147/0aJXfY
	0NGTiK/xrtz2bunkFJcawdyrSqCLLPj8zOt8P3dsI03XTsGr4kdf2TV3CPOZjzMaogOOfM
	BSY3dIQmrCYi7YAhYZ1yl8D9L8rSUOI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-614-FN6k_XkfN2uhLuaesdqpAQ-1; Fri, 04 Mar 2022 08:34:03 -0500
X-MC-Unique: FN6k_XkfN2uhLuaesdqpAQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D230680733B;
	Fri,  4 Mar 2022 13:33:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81ACB7B613;
	Fri,  4 Mar 2022 13:33:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4F7EC4ED66;
	Fri,  4 Mar 2022 13:33:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224DXp2G004827 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 08:33:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AD2DA141DC2B; Fri,  4 Mar 2022 13:33:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A920E141DC2A
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:33:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E217811E76
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:33:51 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-605-ZMeVK_uaMH2T3VfjsmHyCg-1; Fri, 04 Mar 2022 08:33:49 -0500
X-MC-Unique: ZMeVK_uaMH2T3VfjsmHyCg-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id A72501BBE00
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:33:48 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id G7Q6PdELKYzD for <blinux-list@redhat.com>;
	Fri,  4 Mar 2022 13:33:48 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:8616:d376:ace:323b]
	(2603-6080-6302-e002-8616-d376-0ace-323b.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:8616:d376:ace:323b])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 3123E1BB09D
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:33:47 +0000 (UTC)
Message-ID: <625cc4f2-ab55-d987-bc85-842ea1aa1cbd@free2.ml>
Date: Fri, 4 Mar 2022 08:33:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Google is nuking simple username/password sign ins?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <YiHciAX/R+L65BU3@waffles>
	<alpine.DEB.2.11.2203041342400.3038@debian.work>
	<CAO2sX32idanJBXoveeR9sBU_DnB4QhTT6iSaQ0p9=LM4L=5rZA@mail.gmail.com>
In-Reply-To: <CAO2sX32idanJBXoveeR9sBU_DnB4QhTT6iSaQ0p9=LM4L=5rZA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I haven't gotten such an e-mail, but any idea what this means for
> people using the Gmail web interface?


Most if not all Google services will now require that you confirm that 
it is you signing into your account. They are making two-factor 
authentication mandatory, and requiring app passwords for things like 
IMAP. This means that you will likely need a phone or tablet the first 
time you sign in on a new device, something that will get a notification 
from Google that you can tap to confirm it's you. They can also send you 
a text message with a code, which you could verify on the web if you 
have a phone service that works that way. I find that Google Voice 
itself will actually work for this, but it only allows registration in 
the States. But you can get the code on a regular mobile and type it 
into the website if you don't have any way to get the notification. I 
find the app password idea to be highly insecure, and I refuse to use 
it. Essentially they want to generate a password for every app you use 
and store it for you. If you lose access to the app at any time, you 
have to get that password back, or possibly have Google generate a new 
one for you. But worse than that, if someone gains access to your Google 
account or hacks their servers, they get your app passwords as well, or 
can trick Google into generating new passwords for your apps. This 
doesn't have any impact on the Gmail web interface, but would certainly 
cause you to lose access to your IMAP email if you don't trust Google to 
keep the passwords they generate for you safe.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

