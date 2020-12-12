Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B3B3E2D8A54
	for <lists+blinux-list@lfdr.de>; Sat, 12 Dec 2020 23:27:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1607812056;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=S1DrD/AGMQJqsik9czdChdIXDrptRS1erVRr5i2UKsI=;
	b=BmRxR7nZbaF5aSOfvxF54TM3SYqM6j+tjCPg1/NJk6LJdzq/WdUkcDhHc3Jxi4A5yyJnp0
	PVp3OjSDfKKOqOM+wGVTBYQAH7RxqBhsNjQ9kAcF97L5iAcTRXnm+N73xMUd0fJlZXl/wz
	vEkByPPvJMcvmMStMVH+dx52AwB8RgQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-dZA54MC8PI60kShuHUWS4g-1; Sat, 12 Dec 2020 17:27:34 -0500
X-MC-Unique: dZA54MC8PI60kShuHUWS4g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC0F5107ACE6;
	Sat, 12 Dec 2020 22:27:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 205C95D9C2;
	Sat, 12 Dec 2020 22:27:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B1DDD1809C9F;
	Sat, 12 Dec 2020 22:27:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BCMRHkK021328 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 12 Dec 2020 17:27:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A21CF2166B28; Sat, 12 Dec 2020 22:27:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D0562166B2A
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 22:27:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47D56185A794
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 22:27:15 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-576-hLXlFZO7Op-eFNiqJDZR-w-1; Sat, 12 Dec 2020 17:27:13 -0500
X-MC-Unique: hLXlFZO7Op-eFNiqJDZR-w-1
Received: by mail-lf1-f44.google.com with SMTP id m12so20738249lfo.7
	for <blinux-list@redhat.com>; Sat, 12 Dec 2020 14:27:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Q/y4pBR6UfhH4rxWd6MMDzo+yxWn4tlWIx/hcjwJ/58=;
	b=ndDWgIbWZsWPAg2E/Kvw7Q0VfdCYhqYVH+2mvn5MMymWP1DEEMGnOXvcp8LREC2Mum
	4uYGtVZC0OhfFpp0iLMqhI4eoVQRHxiUeHXrACl5C+LGEoqhtTjABNO3VImcHVZHooJY
	NegN6DxoKgQdOt7wWoaiqKdXLxphHyXrGTC35iaJpeAKI0qPqRm+c2y5z0puBXQ0LKIF
	6scilwxZ8QeE54CD/cfHsNRWQ0wyHX5FkESDBQdNntRLlmPD0U4kl0Gy8r+rd0YGLSSv
	wnudHe5RyLBnv7XsOX269eQ9/AR45tUEcryQLQlKjXcM4ARiYzHziobRCqZgF4t5JI06
	TkcQ==
X-Gm-Message-State: AOAM531+xXQD3Msxjl9agkRy83AxH1SUnMnNjTD6WImBI3IG4Vky/r+F
	vwYHG5zYnQQ0w3SaW6uy3tQmI8aDWV3hpMFF
X-Google-Smtp-Source: ABdhPJy/MGYoXUvqn7HNH77eIvvC7NYEzJhnqgv2FrCPhcEsTh8igeCmZFS17qG4vHK4EG1fJnijdg==
X-Received: by 2002:a19:8149:: with SMTP id c70mr6646729lfd.502.1607812031198; 
	Sat, 12 Dec 2020 14:27:11 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	q24sm727312lfp.117.2020.12.12.14.27.10 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 12 Dec 2020 14:27:10 -0800 (PST)
Subject: Re: Does anyone on here know anything about BRLTTY?
To: blinux-list@redhat.com
References: <9FF82FF5-E038-4EE8-BD7B-0CDFE4265160.ref@yahoo.com>
	<9FF82FF5-E038-4EE8-BD7B-0CDFE4265160@yahoo.com>
Message-ID: <aa66ddfe-d567-cf6f-035d-b36345d0815b@gmail.com>
Date: Sun, 13 Dec 2020 01:27:08 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <9FF82FF5-E038-4EE8-BD7B-0CDFE4265160@yahoo.com>
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
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

13.12.2020 0:08,
> Hi guys,

hello.
> Does anyone know how to configure this program to work with a humanware brailliant B 80? I am trying to hook this up for one of my college classes. I am using JAWS as my screen reader.
> Any help would be greatly appreciated.
> Thanks,
>
hm. do you want to do it on windows? JAWS mention confuses me.
if you want to do it on linux: can you provide your distribution and desired
mode of braille display connection e.g. USB or Bluetooth?
>
> Ashley Breger
>
>
>
-- 

Sincerely, Alexander.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

