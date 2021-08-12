Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A99853EAB67
	for <lists+blinux-list@lfdr.de>; Thu, 12 Aug 2021 21:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628798301;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6b/IjPNqFfEI4Jtfcd1OisDGHpPKLnpkM6HSrpPLs8M=;
	b=bOxpbIchCJP+2h4+mbUqdTQ0f5Fm6otwcC/noyJkEsmB+GeEelale49dJcJ0hyhIjR8wXw
	uJQkIKuCd2ixLoYHu1/33FKUUCkS4jwtJPf9V6pei8rV9+uzu1W3NZ1e91Cfmna+o6YD2H
	RF0ypGpcLL8wA2cJKLaMYFeEDu1AwY0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-518-HvoQKxLhNFWQq1PeO-0dpA-1; Thu, 12 Aug 2021 15:58:20 -0400
X-MC-Unique: HvoQKxLhNFWQq1PeO-0dpA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9EC1618B60BA;
	Thu, 12 Aug 2021 19:58:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F8A55D6D5;
	Thu, 12 Aug 2021 19:58:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA8A64BB7B;
	Thu, 12 Aug 2021 19:58:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17CJvtq2014482 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Aug 2021 15:57:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BE88910547E8; Thu, 12 Aug 2021 19:57:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8C5610B2B2F
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 19:57:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8DB880D08E
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 19:57:51 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
	[209.85.218.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-541-xjy7lnteMjiwB5_x10WMDg-1; Thu, 12 Aug 2021 15:57:49 -0400
X-MC-Unique: xjy7lnteMjiwB5_x10WMDg-1
Received: by mail-ej1-f41.google.com with SMTP id gs8so13749246ejc.13
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 12:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=CKAljRh/wgd+J1cB55HJbV2ggYNTggDAgmQDVrq43fg=;
	b=gSomFC6TPdSsesPFfdTk3TvXTUG1c1LKefSc8vMIQTIGQlX5iyP3C2oHxUTVoJzvSn
	UjeEG7fpOK1iwXNEpzbOMBlkXoXcyIrwhbEGKOnC4kbVWNA0m0HIb73PYb8PKQFs5k65
	+ELX50SneuOPeNvWr+XvYk5nUDe7g9oTijNcJC3QSKWPYku6Z3HtDlOXoGSxtxhndBp3
	DllXtlRzBloO0/b6uPulsl6SMcZiTzYmCp5hT2Ov/BtynHoHncaoB3c2x2BQmqrORwEE
	oIsJeMYqFeiWmuwiKUnfKCzoOi8pI6LKtrgglvq/M78FQKddjkqDWbb81j5rkFUgiOJ3
	hwcg==
X-Gm-Message-State: AOAM533RgBNRx6TLyzvTWkImiX/Zl6CRs6tHDZv0ydzc0p7cc4FpfS2A
	agGUoO8PkL+bfE0PGGiVUfpViWYZX/GMEA==
X-Google-Smtp-Source: ABdhPJykcxcA5mRXH4nVj8zwbRepqOKO+uyYadC0dMMbzgDVS2sfI1Rrg6+sf8v7VB7W89RNbjDQaQ==
X-Received: by 2002:a17:907:1b29:: with SMTP id
	mp41mr5381385ejc.459.1628798268303; 
	Thu, 12 Aug 2021 12:57:48 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.106.61])
	by smtp.gmail.com with ESMTPSA id h8sm1627466edv.30.2021.08.12.12.57.46
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 12 Aug 2021 12:57:47 -0700 (PDT)
Subject: Re: Installing using a service like "Be My Eyes"
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
	<alpine.NEB.2.23.451.2108121252530.9633@panix1.panix.com>
Message-ID: <75c44c6e-40ef-e6be-5272-0fe2c9dcdf02@gmail.com>
Date: Thu, 12 Aug 2021 21:57:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


I tried, but the first time I tried installing Jenux, I got a loop at 
the start of the install process, one of the repos gave an error, don't 
ask which, I forgot the thing's name. Second time lucky I thought, but 
you wish. I got it installed just fine this time, however, after the 
reboot I got fenrir and a log in prompt, which I promptly did; then I 
got the Mate desktop, but no Orca! I used Envision to check. I will give 
it one more go.


Yours,


Brandt Steenkamp

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
-- 
Warm regards,

Brandt Steenkamp

Sent from my gass powered Slint hair dryer.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

