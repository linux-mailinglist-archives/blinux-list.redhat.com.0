Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E5B4CACA8
	for <lists+blinux-list@lfdr.de>; Wed,  2 Mar 2022 18:57:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646243865;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sEqHl/xzN3GzhXJ4GuD11P1DVX52gXjYMrBauC6DvpE=;
	b=I+6jM7DoM0gMUPmwp71EHJr3QslNrL6Ce18qZGLaCYHUp44KKEvvUGhgnI9QDSJ0P1EBBZ
	BQnZXGArl9QjN3fVpgam7WEco63LAATr2TBzCQ2iiY6tugTxVPSCoUrlJzLO1mymAjXp07
	Zb96FfGkqpI0wk+pJVUjr3m/rpNMrOA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-372-v4kypWCaOIm4BxTcFeiYFg-1; Wed, 02 Mar 2022 12:57:39 -0500
X-MC-Unique: v4kypWCaOIm4BxTcFeiYFg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 27211180FD72;
	Wed,  2 Mar 2022 17:57:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C969B7C02A;
	Wed,  2 Mar 2022 17:57:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4FAF4BB40;
	Wed,  2 Mar 2022 17:57:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 222HvP6D025600 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 2 Mar 2022 12:57:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F35EF40CFD15; Wed,  2 Mar 2022 17:57:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE11040CFD0C
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 17:57:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE69238041C8
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 17:57:24 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-594-Li6sVIT5OUihExailrHS1g-1; Wed, 02 Mar 2022 12:57:22 -0500
X-MC-Unique: Li6sVIT5OUihExailrHS1g-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 0C9111BBE0D
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 17:48:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id Qz5WCrtH4rvo for <blinux-list@redhat.com>;
	Wed,  2 Mar 2022 17:48:17 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 62FD71BB0A3
	for <blinux-list@redhat.com>; Wed,  2 Mar 2022 17:47:56 +0000 (UTC)
Message-ID: <9ab7494f-a81a-9795-2e6d-f730e934ba95@free2.ml>
Date: Wed, 2 Mar 2022 12:47:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Any progress on .pdf viewing?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Yh9aEWNufoEE0Bvp@waffles>
	<a35cb12d-cced-b826-a18b-715945c92717@free2.ml>
	<6eaae389-1b23-4276-5f2-91a678ef8682@panix.com>
	<CAO2sX30TQo0iAOJGSZEbZAjfKxduTbteTP5mssZGcqJ3+Em9Qw@mail.gmail.com>
	<310c7b6e-47b0-d2c7-94bf-2edaad159f6e@free2.ml>
	<47bf95e-409e-34af-d914-c7e32f6bb088@panix.com>
In-Reply-To: <47bf95e-409e-34af-d914-c7e32f6bb088@panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

--raw is also deprecated now too.


What? Then I guess I'll just start using copy/paste from Firefox, Brave 
or Atril to convert pdf files to text. Without -raw, the text file 
generated by pdftotext is near impossible to read in many cases, 
although reading the man page, it looks like maybe -layout -nodiag may 
help somewhat, or maybe just -nodiag, which is supposed to skip things 
like watermarks and such.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

