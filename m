Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 77DB93EB328
	for <lists+blinux-list@lfdr.de>; Fri, 13 Aug 2021 11:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628845576;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i+R8sVOjIGrnEzAfqydw5byuCfVH6hw/+Nl8xk2q2TM=;
	b=Lvevmkyiw42QqgHIH1kQK4Nw8rr1ghtbIWwloO6Jb0tVe/Sfg3jgJCJxKDjbXB4L2869XW
	uxcdQ2dtnmh8Cdh5+6y7HgZ1xeqg4LVoZ8ypxpQYd6X/JQeRzgYY2t4FfHqpoolXpaiPAR
	TzvGXiJDoqLBuRHxz9mmNvt6GeYQ+i4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-533-Xr-EihVhOcOsD-Q2hV7U8g-1; Fri, 13 Aug 2021 05:06:15 -0400
X-MC-Unique: Xr-EihVhOcOsD-Q2hV7U8g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E01C8042F0;
	Fri, 13 Aug 2021 09:06:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F17CE282DC;
	Fri, 13 Aug 2021 09:06:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15851181A0F2;
	Fri, 13 Aug 2021 09:06:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17D95wrZ027550 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 05:05:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2253A20A3D57; Fri, 13 Aug 2021 09:05:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D37B20A3D50
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 09:05:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1291A101A529
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 09:05:55 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
	[209.85.218.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-498-rLQ_Dy-BM12IPG7fKWlEuw-1; Fri, 13 Aug 2021 05:05:52 -0400
X-MC-Unique: rLQ_Dy-BM12IPG7fKWlEuw-1
Received: by mail-ej1-f44.google.com with SMTP id go31so17052390ejc.6
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 02:05:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=YZ66qvto39N80y5TRdvAqrXHpAtEdzE2B5tcbA0rzSg=;
	b=L8ckvL0nppgJhrNN38Vr47DK9nWYlST6Oj+LliIcmztrYBVPYVhpMlxccMcwZyDl7U
	qodFGy1+UxhrwVoWA3WWhGUcDJcuHySHL4Aw/YinwOYPuC5QZIN9UsI0FxoLkH8dfikh
	GrrxWut2M+2jErhZAB3s40E4YWRZRG6I1roq5Z9MHsaNkws+q1OCoKnFgtGL8PkP8OuR
	hsbNmtX+kGFDW3H6BNZZyAVw9yCfupyrJUBC2zCmZV1ALaUAGlyihWzZdJ2t6s6jj25x
	o/ZZlWMPEFhmwJyBf7Unp7vC/cDVmcUKEAyL+nhcZZi+nX3ioHfIHcL+Z5BQ65xb9BCY
	Vl0A==
X-Gm-Message-State: AOAM533Iwtc8gfrCnZvfxvtgrCdvQQ5Ox+7X29yG3NbQatix962+yPyP
	8yavTuLmp5jkqbk6NN1DdhaWwNf+B6VQog==
X-Google-Smtp-Source: ABdhPJyg2uXrE6JlkNc1fy8UfM9Rm4QtUSeeJ3ixfIzxVIXsXXdYf9eyyHBMR7Aa0faBSANq5uQKbw==
X-Received: by 2002:a17:906:d04f:: with SMTP id
	bo15mr1409256ejb.309.1628845551248; 
	Fri, 13 Aug 2021 02:05:51 -0700 (PDT)
Received: from [192.168.8.113] ([197.185.106.61])
	by smtp.gmail.com with ESMTPSA id p3sm371543ejy.20.2021.08.13.02.05.49
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 13 Aug 2021 02:05:50 -0700 (PDT)
Subject: Re: Installing using a service like "Be My Eyes"
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
	<alpine.NEB.2.23.451.2108121252530.9633@panix1.panix.com>
Message-ID: <4818e950-83e7-466f-a3b9-8648aca7a695@gmail.com>
Date: Fri, 13 Aug 2021 11:05:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2108121252530.9633@panix1.panix.com>
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

Ok,


I tried installing Jenux again, this time it looped after installing 
packages at "checking package integrity". I decided, screw it, and am 
for now running Fedora Workstation 34 with the default Gnome desktop.


Warm regards,


Brandt Steenkamp


Sent from my Fedora powered coal chest freezer

On 8/12/21 6:54 PM, Linux for blind general discussion wrote:
> You could run Jenux and not need services like be my eyes.
> #mailto:dnl.nash@gmail.com
> wget -bc https://nashcentral.duckdns.org/projects/Jenux-2021.04.20-dual.iso.sha512
> #wget -bc https://nashcentral.duckdns.org/projects/Jenux-2021.04.20-dual.iso
> #sha512sum -c Jenux-2021.04.20-dual.iso.sha512
>
> On Thu, 12 Aug 2021, Linux for blind general discussion wrote:
>
>> Hi all,
>>
>>
>> I know that Distro-hopping really sucks, but we do it anyway.
>>
>>
>> I am asking about installing with aid from a service such as be-my-eyes,
>> because, as we all know, distros like Manjaro uses the Calamaris installer,
>> which, last I checked, is totally inaccessible with Orca, and in many cases,
>> Orca is not even included in the live environments.
>>
>>
>> I would really like to run either Arch, which I always fail to install
>> correctly for some or other reason, or an Arch derivative, but, Calamaris,
>> enough said.
>>
>>
>> If anyone knows whether you can install using Calamaris with the keyboard
>> only, or if there is any Arch derivatives with an accessible installer, I
>> would be really grateful.
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

