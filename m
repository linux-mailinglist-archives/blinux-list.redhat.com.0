Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D217A45D3CE
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 05:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637813089;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p7vFDDFKsTRmjLabHsbFUsaQsK1Yb+fJv3nL9T5+xr8=;
	b=WAtNLE7LEviB0dDRQcgX8vAWEgt+GQ3hhihnqHhNAtVoBvFv6YjD9QlSckfEFiPSRHylKO
	GqN/RdSf/QLrJxgZ5OvnytR4RwOMrxJczx6q9OlDUhT8FRDbf12DWA5i3nj6UpFQ/Bm+86
	WBGMQoBxa86pSTEuE6WMSgTZeKEtaXU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-466-WMnHjZBjOaq_q-fs1dfu5Q-1; Wed, 24 Nov 2021 23:04:46 -0500
X-MC-Unique: WMnHjZBjOaq_q-fs1dfu5Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C68DA102CB73;
	Thu, 25 Nov 2021 04:04:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4185E4180;
	Thu, 25 Nov 2021 04:04:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 84CC34BB7C;
	Thu, 25 Nov 2021 04:04:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AP44PNM019750 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 23:04:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3ACCD400DFBC; Thu, 25 Nov 2021 04:04:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 356A240149AB
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 04:04:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17B06185A7BA
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 04:04:25 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
	[209.85.219.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-188-IeJCURjPNDqxTo6afoW1tw-1; Wed, 24 Nov 2021 23:04:23 -0500
X-MC-Unique: IeJCURjPNDqxTo6afoW1tw-1
Received: by mail-qv1-f54.google.com with SMTP id b17so3378301qvl.9
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 20:04:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=f36a7Q1TDqS0au0YjlAPvzsEgqBVqcFDr3FjtNdU6rM=;
	b=WcfMNwacqilJD5AFK0CqwWITDbuVCuCORGewPUSMoiI30UPmMjzNjJb9K5Sp9fnoX8
	nwi9cuKtv2u/I3QVY+lPAOco5W1cRPNO15+88BsXVqT6xNRuBVOsfpz3IFkhb8YhB053
	IaFrBB7uqTPXyj1CK8+qad6S/1dGS8LVOz2unAAc9Jt4h3mnp3UahNjBmJcTL4eMuif5
	0ZcOkVxeOEZkAwK+oH/c7sxYMwIK8w34XvXpBihuLFjTjvshKAp6YA4A2JYGK3K4wOoE
	SbduTxpWLIOVcNMQHTCp3vpcVvTURB8Q5G6rLreRL+mahBjFKYhAEY2Dbw4wNRo6HZxw
	5WsA==
X-Gm-Message-State: AOAM530hmZaE+DK1glIXt882tBjc7Eih6xeaW49w8JSTuIWKYo1BQb2x
	GfXM1xvWQK3yTVyRqAe/fNW7VRdkDWGPw/Sm
X-Google-Smtp-Source: ABdhPJx/lLNXn+Qt5NzmLsgofz9kuWdg9khIVIoYpT8FqbB93Li7KVmbwMPU0cEeiPRzf3xpTNw1Ug==
X-Received: by 2002:ad4:5fcd:: with SMTP id jq13mr14097938qvb.29.1637813062532;
	Wed, 24 Nov 2021 20:04:22 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id g19sm920097qtg.82.2021.11.24.20.04.20
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 20:04:20 -0800 (PST)
Subject: Re: Fedora and virtual machines not starting
To: blinux-list@redhat.com
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
	<f1953152-1ebc-0f21-7f23-db9a329ec5fb@gmail.com>
	<e0e1f20e-e4cd-1c84-d620-a0aee6c7e8ba@gmail.com>
	<ff690e73-0230-0613-a70e-653ce98a1f5c@gmail.com>
	<9f8ca8eb-fab2-e53f-cdb3-3be623a56137@gmail.com>
	<a7342368-d9de-c436-d5c8-84d0b1f0aa23@slint.fr>
Message-ID: <df94c415-7f42-40e9-848f-0ba29e6c9ffe@gmail.com>
Date: Wed, 24 Nov 2021 23:04:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <a7342368-d9de-c436-d5c8-84d0b1f0aa23@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I had very bad experience with Fedora 35 mate a couple of days ago too. 
I installed it on an external media, SD disk and had serious 
accessibility problems. I lost speech during installation. I also lost 
speech during update. I could not get braille to work with it at all, 
and It also screwed up my laptop bios start up options.

I do not know if earlier versions of Fedora are any better in terms of 
accessibility. I would not recommend it for beginners like myself.

Cheers,

Ibrahim

On 11/24/21 7:59 PM, Linux for blind general discussion wrote:
> No luck for me either with Fedora 35 mate in Qemu.
>
> I could check that orca starts (from mate-terminal), so does 
> speech-dispatcher, but no speech.
>
> However sound is working in the VM as I could listen a you tube video 
> video, even if the sound is very distorted.
>
> I suggest to report tee issue to Fedora. o they have an accessibility 
> mailing list?
>
> 02:00 AM here bed time.
>
> Cheers,
> Didier
>
> On 25/11/2021 01:32, Linux for blind general discussion wrote:
>> I've no sound with 35, but sound with 34 however using 
>> quickemu/quickget though. I'm curious if dider runs into this too on 
>> F35, or if it';s something only we're running into? A quick Google 
>> points me to similar issues with the 20X series of releases but those 
>> were wolved a long time ago.
>>
>> It's strangre. I'm using a USB headset however, and I can't think of 
>> a reason why F34 would work but not F35 on the exact same system
>>
>> On 11/25/21 00:25, Linux for blind general discussion wrote:
>>> Could be something with Solus. I get no sound at all using 34 MATE 
>>> or Workstation in plain qemu. But this seems odd, considering all 
>>> the audio issues I've had with Solus, both in vm's and on bare 
>>> metal. That said, I wonder if I should try this using a snap or 
>>> flatpak if either is available, since I have issues with Fedora's 
>>> version of MAME that I don't have with the snap, although I can't 
>>> say that I've had any other issues with Fedora's default packages.
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

