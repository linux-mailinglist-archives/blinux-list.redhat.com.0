Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C48E34C4EB0
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 20:25:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645817112;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4IuNsxDYMLnrdKocdO6V1xn3MYvou4ViuG4bhb1GCNE=;
	b=HJm9SNPcVtJkJZOzyNIrC/GJvfvgHHOEoTBFZXEiF2IfXq/mmj+A+WMm/S5Us/qcbHJAzF
	anwGz6jNw4ItOnsNaqaORT1Ty9YnQqCzHgrrkHuOPPUrO/JPzlZEShii5tAOC0R0k/093/
	3X43vjUoQWrNCRc4l3kHm4LrJ3b7viI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-199-9WEqIgW8OQm8F_DXfcdo8w-1; Fri, 25 Feb 2022 14:25:08 -0500
X-MC-Unique: 9WEqIgW8OQm8F_DXfcdo8w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0738FC83;
	Fri, 25 Feb 2022 19:25:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A73D416A5E;
	Fri, 25 Feb 2022 19:25:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B76904ED66;
	Fri, 25 Feb 2022 19:24:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PJOqRA009252 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 14:24:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 76E44400DEFB; Fri, 25 Feb 2022 19:24:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 725BF400DFB2
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 19:24:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 533563C14842
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 19:24:52 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-459-nwy6p-vTNT2Ctt-nk40fWQ-1; Fri, 25 Feb 2022 14:24:48 -0500
X-MC-Unique: nwy6p-vTNT2Ctt-nk40fWQ-1
Received: by mail-ed1-f50.google.com with SMTP id c6so8734788edk.12
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 11:24:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=5r0VrKTae3yIzzcj3z6caj5ay+jow4Tmd4OBH7/G8zA=;
	b=KZv8gXsufBr6N7myQHYsb7SJ4PrzHrJcxeSZtNJbDJnpGZX6QuZx9WXrXjF0ESvOEz
	gbJyO2IPhpSoBlBKmoueQm0o0aFjhBlyyxDQB9CDSxlZnBiRmYj7L9Y5wxkeUdl+RCWX
	1tvy+e/HcHe4zGngFLMTdArnbsYBaWF6C3WbmoQVJBBREm105RcWPUFg3NcrczdlN/xv
	Ww+52Hya92tj43odizh6ig5Yiu1DXvLI1/XZcWc+9YPTSnhADCj6ODIQ8QiRR1cXW1E6
	W+YI0o4+oYWSz3WGVWNOml2NDevfEzH9eK703ja7F2VG7JvuFcL4UA8HNMvqdTMYueWU
	EFHQ==
X-Gm-Message-State: AOAM5305YOAaebhjKQFNQo4/7Tko33/V7qO1FgU8kSHUE2sHtsnU5eNP
	08jLr3PDWZh7heZNzsqRMzhkIP6ScaeYBQ==
X-Google-Smtp-Source: ABdhPJzPO6wiZ4B0IuAQ63IHLQPu4vZcVy613wd/e0+SGZb+UnUJ7psssk841SiARaS+PD4P01v5qg==
X-Received: by 2002:aa7:c0ce:0:b0:400:1a:e9a2 with SMTP id
	j14-20020aa7c0ce000000b00400001ae9a2mr8782780edp.396.1645817087290;
	Fri, 25 Feb 2022 11:24:47 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.193])
	by smtp.gmail.com with ESMTPSA id
	sa13-20020a1709076d0d00b006ce3ef8e1d4sm1330125ejc.31.2022.02.25.11.24.46
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 25 Feb 2022 11:24:46 -0800 (PST)
Message-ID: <1f5fe928-53cd-2c91-4ff6-f14339f36d19@gmail.com>
Date: Fri, 25 Feb 2022 21:24:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
Subject: Re: Voice assistant on Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <37760ebe-f519-16b6-2f46-691c0708aedf@gmail.com>
	<5a55ff72-4742-1540-5859-c169a1ab81f8@free2.ml>
In-Reply-To: <5a55ff72-4742-1540-5859-c169a1ab81f8@free2.ml>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hey Kyle,


Thanks for that one, I am also looking at Google assistant and/or Alexa.


I have 3 echo devices in my home, yes, I love my Linux, but considder 
myself a pragmatist. I use what works. Wether it be open or proprietary. 
As long as it does what I need it to do, bob's your uncle, I'll go right 
ahead and use it.

Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint machine

On 2022/02/25 21:17, Linux for blind general discussion wrote:
> We have Mycroft
>
> https://mycroft.ai/
>
> among others. Mycroft is installable through snap if you have access 
> to it, but you can also clone its git repository and install it that 
> way, which seems to work better.
>
> https://github.com/MycroftAI/mycroft-core
>
> Unfortunately I'm not aware of any distro package for it. Mycroft 
> isn't bad, though it does tend to be too sensitive, hearing its name 
> when you're not talking to it, or when your screen reader is speaking. 
> There are others as I said, but I can't comment on them, as I haven't 
> tried them ... yet.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

