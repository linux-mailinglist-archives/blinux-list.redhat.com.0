Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BEC4C5515
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 11:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645870099;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rQLQc+DETNZI3BCVAAMsv0qy+aMSqYeGlKGOKmOgXcc=;
	b=er5FRLpmxEgd3MyDJ3lb0/K1blYOoOx2AjLRxSKVqfBhYU5ebRXyVEcdgNwSWLobkLE+1s
	87HsG/oUFlcAXSaCHEIeRkzjtrTajH6+Z2fIoU5eN6Sbn32lcT8B8cb4ZbGcncwPL5vYMH
	dCJAPIsAwKBEg75dNb6jlhqbhV5jRuE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-310-MekXwIfgO5e7ZQ8U7eDwpw-1; Sat, 26 Feb 2022 05:08:16 -0500
X-MC-Unique: MekXwIfgO5e7ZQ8U7eDwpw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D0998145F6;
	Sat, 26 Feb 2022 10:08:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5230B83B8E;
	Sat, 26 Feb 2022 10:08:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 53D5318095C9;
	Sat, 26 Feb 2022 10:07:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21QA2JpN031789 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Feb 2022 05:02:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 943DCC080AC; Sat, 26 Feb 2022 10:02:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FE65C080A9
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 10:02:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7682A101AA44
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 10:02:19 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-192-QgqFB0kXPimwW0ZzbA7Z6g-1; Sat, 26 Feb 2022 05:02:16 -0500
X-MC-Unique: QgqFB0kXPimwW0ZzbA7Z6g-1
Received: by mail-wm1-f51.google.com with SMTP id
	10-20020a05600c26ca00b003814df019c2so188569wmv.3
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 02:02:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=Wwj33xuGCtqUDKQz9Gt3Fu8wAr3+I5HZsTHfax1/j7Y=;
	b=ziaeifUBMrsPKgjD9w639g9HMqL1zKtQSKCpvSyLR8+m8xPR8VA0a6k4kKQ6bk3j3A
	G4saE9gUQIO+ZbLXjvwMZuKgiXKsTCXzGlfp9UX3vHeA0j0Kzci4QjEB1guBGB85ioU2
	UlHKQEeQ7o51iJh5PjXMwPxOHuJh+DJkyc3FyEyJdSobk67SBbxBc0iuPKU5T3wzBvZB
	wGHxf76PJ1JikDx2OQYYukDwQ6V9zcDTGlVsb4Ho8pUffL4J1PibrQdFE/qa9PthtTPj
	hDvPcM8YCnA/SFidM8prER3sIE2XLUP/3ahW8DwGiTnR0+ERrA57jS+/EZuEO65GmMzs
	DLlQ==
X-Gm-Message-State: AOAM532rLFpUh2ObjzElLL783lUtuoaKUvB5wrmSRTbnoIcpVm0x92DI
	Uf0f/HMwktGbHozc6AeuNkqoI39PboU=
X-Google-Smtp-Source: ABdhPJzJSQWsssf3YdUuGuDM7Op98GuEUwBxV4I5O0sn98MM8ZORI/lYrZjQYGEG8dOsyeC8CDSAYg==
X-Received: by 2002:a05:600c:1c1a:b0:37b:ead2:8e6d with SMTP id
	j26-20020a05600c1c1a00b0037bead28e6dmr6238892wms.94.1645869735072;
	Sat, 26 Feb 2022 02:02:15 -0800 (PST)
Received: from [192.168.178.49] (host-95-252-191-49.retail.telecomitalia.it.
	[95.252.191.49]) by smtp.gmail.com with ESMTPSA id
	e9-20020adff349000000b001e32675a367sm4542265wrp.28.2022.02.26.02.02.13
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 26 Feb 2022 02:02:14 -0800 (PST)
Subject: Re: Voice assistant on Linux?
To: blinux-list@redhat.com
References: <37760ebe-f519-16b6-2f46-691c0708aedf@gmail.com>
	<5a55ff72-4742-1540-5859-c169a1ab81f8@free2.ml>
	<1f5fe928-53cd-2c91-4ff6-f14339f36d19@gmail.com>
	<753fd4ae-d611-e942-7270-a777b53858cf@free2.ml>
	<23199229-22fb-11bf-01b9-b5de96bbccd8@protonmail.com>
Message-ID: <2d61a10b-f49e-30f3-3f58-06b2b135fddd@gmail.com>
Date: Sat, 26 Feb 2022 11:02:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <23199229-22fb-11bf-01b9-b5de96bbccd8@protonmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: it
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Linux for blind general discussion, il 26/02/2022 02.11, ha scritto:
> Mycroft works completely offline in this regard, so that's finally
> something I can trust.
Alberto:
Hi Rastislav,
do you so sure about offline recognition?
Because I was interested to Mycroft project some time ago, and I 
understand that, with some adjustments, it could be used offline (and 
without an account), configuring Vosk, DeepSpeech or other voice 
recognition service in the LAN for Speech to Text (STT) part...

https://wltd.org/posts/how-to-make-mycroft-run-offline-to-have-real-privacy

...but usually it uses Google Cloud STT (IBM Watson or wit.ai STT are 
also available), as illustrated in technology overview page:

https://mycroft-ai.gitbook.io/docs/mycroft-technologies/overview

I'm quite sure also that they filter/anonymize requests before routing 
to 3rd-party STT service, such like DuckDuckGo does with Google and Bing 
search engines, but I don't remember where I read it.
Alberto

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

