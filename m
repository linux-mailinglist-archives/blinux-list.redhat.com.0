Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E60B466DF3
	for <lists+blinux-list@lfdr.de>; Fri,  3 Dec 2021 00:41:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638488491;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=honI4MJelC7q1uv5R9DXWWztQdBjGs0LmXZq9DJioeA=;
	b=DyDmMtj/rlrLivJO/SOymitd5FgMGPv5nXJ+wYQ95eISnEkxiwtqhLutrzHm6YleU5QaYG
	0+/8Oaqs+N4AqLDAH/AvMsYSIx+GdRRlfPcG8hfZWiSx9UfPbyCCuUd7xsufDwuweVZVSS
	1wuG4aV6tN4lfrj0sTt/LTKZB2SqLDg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-354-V1lDdVQvPRmItW2S3awSdg-1; Thu, 02 Dec 2021 18:41:27 -0500
X-MC-Unique: V1lDdVQvPRmItW2S3awSdg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 78F8C1017968;
	Thu,  2 Dec 2021 23:41:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 65BFE4ABA2;
	Thu,  2 Dec 2021 23:41:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 93C664BB7C;
	Thu,  2 Dec 2021 23:41:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2NbTlF020655 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 18:37:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D65F6401E38; Thu,  2 Dec 2021 23:37:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2C2A401E2C
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:37:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9FC6811E78
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:37:29 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-52-WDbDp46_PKyezhijvj4iXA-1; Thu, 02 Dec 2021 18:37:28 -0500
X-MC-Unique: WDbDp46_PKyezhijvj4iXA-1
Received: by mail-qk1-f181.google.com with SMTP id p4so1669006qkm.7
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 15:37:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=L2Owemyu6nBDUXBbu31text3frKUMU3WIpIO4DMp9BM=;
	b=5oM4ObyTRdA9pBC8fFCT61jM4OM/f1bXdMo8oC0s1ryv99arlJKkeUc7zhSYa5qqQU
	jkw3kEvKpjirLWEwXYQzP3mYykwK+U3bclLrCzxKZVoZLLpNiWr7fgOVshrss0cG+871
	jG5TMTVKxiernl16/I57OkeYY55D8KdKUHyMfJmPArWF0uQz5NdS+/OOz0/gt8rv/fqI
	R1I6JhGMXaGvqmMrALfpdH5ySSlOefMbbUU0qZ7liO44U0KvcUnckf+wQN2LyznB2fUi
	pxVG1WEEn4aVxgjqXIwNH2QKSxMGvUtAqw3wS7esfD7zZTppLXu1+QITiBWCBF5gcViy
	ZGWQ==
X-Gm-Message-State: AOAM533gmCBHnMvwQRaoSGci9SdN2nKcoT+FlCAA7PUcGjvYs4NrMN4V
	QvWEM0JgyFstb9AUQ8BjdXpVjRIUrvE=
X-Google-Smtp-Source: ABdhPJwEOkbpju1Rw/XVlAfznXlfwFEfDrd/fDZtmBdoz2czt2BnOpF27s6bA9d0iPP8TElw8OyvFg==
X-Received: by 2002:a05:620a:1789:: with SMTP id
	ay9mr15034816qkb.553.1638488247537; 
	Thu, 02 Dec 2021 15:37:27 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	i11sm906017qko.116.2021.12.02.15.37.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 02 Dec 2021 15:37:27 -0800 (PST)
Subject: Re: Help booting live disk
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
Message-ID: <a639793f-b727-74f1-6461-bbc9b525ff31@gmail.com>
Date: Thu, 2 Dec 2021 18:37:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Shortly after you power on the laptop, usually about 2 to 3 seconds, press the 
F12 key. It never hurts to press it once every second after that, letting 
another 3 to 4 seconds go by. Now press the down arrow key once, followed by the 
enter key. Count off another 3 seconds for safety and press the enter key again, 
or else perform the steps your distro requires in order to start it talking. If 
your computer doesn't boot to the USB stick after this, repeat the steps above, 
except instead of pressing the down arrow key once, press it twice. Keep 
repeating those steps, adding in additional presses of the down arrow key each 
time until it does boot correctly.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

