Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5FF8C42CF16
	for <lists+blinux-list@lfdr.de>; Thu, 14 Oct 2021 01:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634167145;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Cu0jz7Q2dygEhdApCax0ME4DUJ/M9QKhrCTjXv+CRaM=;
	b=J6R/9TkHiGBsiMAidUFUcsUKt/6X5yI5ewgkzQaov20AWumTpvrPfGNTdZfvRTRBIVfV2Y
	+1sqOwRoR7F57xuEkhCtm9q4wLYzoLzZkX1ENaO2AQU1xDkDI8CJ+yg2RJnrrlDo38k7oW
	MYz+PBtYCraol7FFKlNJiDTAcp1VE0o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-XAcca0ljPJKK-RyB_zSScQ-1; Wed, 13 Oct 2021 19:19:02 -0400
X-MC-Unique: XAcca0ljPJKK-RyB_zSScQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A52363FB0;
	Wed, 13 Oct 2021 23:18:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AB5C5DA60;
	Wed, 13 Oct 2021 23:18:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9A6E34A704;
	Wed, 13 Oct 2021 23:18:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DND7pE006366 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 19:13:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DBC7510F8E3E; Wed, 13 Oct 2021 23:13:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6EA210F8E3D
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 23:13:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17356811E76
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 23:13:05 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
	[209.85.216.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-319-bL72bCAQOqiU1cEQMtYwtw-1; Wed, 13 Oct 2021 19:13:03 -0400
X-MC-Unique: bL72bCAQOqiU1cEQMtYwtw-1
Received: by mail-pj1-f47.google.com with SMTP id
	ls18-20020a17090b351200b001a00250584aso5572006pjb.4
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 16:13:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=kkiL7kGmx1yZCfPm8GWJCH8F7HQaUkJAjOluANjH8lA=;
	b=sGd2XNdGewfDdkJI6/OUvOaEczEALK48WKCc/lds9LZr83LVVGzEtU47MRs90PsGl2
	ZKdhvU9IekdjHSJHMUBhSA0L4YvlxUemCBX4L9CtCImA82Co8sM/UVriqD6ZD44AGyP8
	SHJe1b4M27J0zoZIxn/OnUhZtPD+ISsZgShDeYCMMcx8W5Fm+kUU3Fu6Yzy28uWBNzOg
	s2xzrLLLm8dQwdIIcpi14GjK+0QOpgYrSeppMyw2TIIqC/i6SjAHw/3F2EtpNVe39eXK
	at0H8SSPIwWbb3uDeutRAj7hb/HSQ3RT7NMzkR4UXYnJdLF1baPEk5z0R/AheJvZ5hVg
	Ybkw==
X-Gm-Message-State: AOAM533YL6o47pfjaqcjUZ0AHONaRCjdQScCuXtqJSQylGkKvzm0GGcA
	wBK/YTakmiPUGvgYZRjjQ6hno1ZgT2k=
X-Google-Smtp-Source: ABdhPJz24UbzKPilrTb0QQzyS7LmjQIZy9aCXbQVXNHxfs6cwByAPtEqoV1PRiM0G1N164zZKwyt7w==
X-Received: by 2002:a17:90a:4502:: with SMTP id
	u2mr16631521pjg.186.1634166781927; 
	Wed, 13 Oct 2021 16:13:01 -0700 (PDT)
Received: from [192.168.1.101] ([103.121.18.106])
	by smtp.gmail.com with ESMTPSA id d6sm498693pfa.39.2021.10.13.16.13.00
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 Oct 2021 16:13:01 -0700 (PDT)
Subject: Re: GRUB boot tone on Fedora
To: blinux-list@redhat.com
References: <922a2740-b06a-c964-ddd6-c65e095507e6@gmail.com>
	<alpine.NEB.2.23.451.2110131003001.29121@panix1.panix.com>
Message-ID: <abafc2a4-3dd6-8e5c-1eb3-82d345e8cf21@gmail.com>
Date: Thu, 14 Oct 2021 06:12:59 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2110131003001.29121@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Here's what I've tried


Update /etc/default/grub and append GRUB_INIT_TUNE="440 480 1"

run grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg

Confirmed that "play 440 480 1" exists on /boot/efi/EFI/fedora/grub.cfg


Still got no beep on boot. Previously with Debian on this laptop, I have 
beep during boot therefore it is not hardware issue.

I do not wish to reinstall debian just to get it's grub config :)


Regards


On 10/13/21 9:06 PM, Linux for blind general discussion wrote:
> As root edit /etc/defaults/grub and uncomment the line with Tune on it
> then save that file.  Next run grub-update then reboot.
> If the computer hasn't got a speaker, some don't you may need to find and
> install the rc.local package then put a file in /etc/rc.local/rc.local.d/
> with a script that plays a sound and make that script executeable.  I
> solved that problem that way for a friend once.
>
>
> On Wed, 13 Oct 2021, Linux for blind general discussion wrote:
>
>> Hi list,
>>
>>
>> I want to try Fedora on my laptop. So far I really like the experience from
>> installation and all.
>>
>> -- Next I want to add some minor tweak which I like from Debian based system
>> which is boot tone.
>>
>> I try adding "play x y z" to /boot/grub2/grub.cfg but nothing happened.
>>
>> I hope someone can throw some suggestions. Any help is greatly appreciated.
>>
>> Btw, it's an UEFI system.
>>
>> Regards
>> --
>> Edhoari Setiyoso
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
-- 
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

