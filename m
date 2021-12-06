Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6639D4690F0
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 08:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638776916;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=doQOuHMs9y0C87wn88gjiD9pfHMnjS886Uy0hYQvAJ0=;
	b=HBZd5FZbDinIcfc2jWRCbeXSTV8OqkeFjFFDmLtPcQGnBhh/kScyGfqGC/dPHkkSJh+sfL
	oQL14nJvP3GJHZry1QKHidzkZmcuSlXpDHrs8/s5GHqLxfb9DlaAl57v+awDuTqzoGMtgF
	QfUZYDjNOdyQxG++grDkPjdpAseICVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-262-U0Rp6kojNPGQfGX8_aRrhA-1; Mon, 06 Dec 2021 02:48:33 -0500
X-MC-Unique: U0Rp6kojNPGQfGX8_aRrhA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFBC66123D;
	Mon,  6 Dec 2021 07:48:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B4405F4E1;
	Mon,  6 Dec 2021 07:48:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5A80B4BB7C;
	Mon,  6 Dec 2021 07:48:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B67mN66008641 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 02:48:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DC91BC202C9; Mon,  6 Dec 2021 07:48:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6E2FC19145
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 07:48:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC72E29AB449
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 07:48:23 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-502-Ll8m3vf1O7SvtsTTGxSW_A-1; Mon, 06 Dec 2021 02:48:21 -0500
X-MC-Unique: Ll8m3vf1O7SvtsTTGxSW_A-1
Received: by mail-ed1-f46.google.com with SMTP id o20so39167637eds.10
	for <blinux-list@redhat.com>; Sun, 05 Dec 2021 23:48:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=OSSgDJRlTdBhapBMQXENWTPKbkrKjSvV4DprPwFCyog=;
	b=JIEwCoQfsFhRhA8MLCnXu3BKEdEsPfbbEUsnxJSBe6A+Hbs6Zp262hhXhK6aB41dXL
	j+RMrcwjYEIvWuHI7igYSXZeZocV0vE2VkYLQ9sBYGIyt7WtaD7pCrSxunSqoAVV++5v
	YO9MHl/aUvgNrz+3k8HJ+UK6V0CCbmm3zpbDDhtVFKYez/VVg/dznDopoq084zVbyBSO
	8paypNHg8934J0XrcQF5e1+aInjonmzXc9QENpUsaJjZTVFZcXmxH8JyJPa5rZTqx0D6
	lPw15NHr92y/9KApLNXl6FDpsA0pPpyS1WiKC0+N4bw6vlqtpLVMNJLcF77xcMEvRg3A
	48jg==
X-Gm-Message-State: AOAM5316q3JAjSziJMTYAMuZNlMe5ZegZJdeAlrylOWH9v+E4sDoGZXF
	glcy78byvx2IIKeZn1BZqM2rBE/ymzojxA==
X-Google-Smtp-Source: ABdhPJy4QuXt3Sjxef0CAe/7x7ux9Pt4sbbPVoGy7M6PqDxWxAUfgB70YAsLHRlO01KzQheOq7SS/g==
X-Received: by 2002:a17:906:3085:: with SMTP id
	5mr42618133ejv.365.1638776900421; 
	Sun, 05 Dec 2021 23:48:20 -0800 (PST)
Received: from [192.168.8.130] ([197.184.178.46])
	by smtp.gmail.com with ESMTPSA id
	g14sm7342048edq.86.2021.12.05.23.48.19 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Dec 2021 23:48:20 -0800 (PST)
Subject: Re: Looking for a cli audio player
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c5973fa8-6790-053c-086a-f6137eb01452@gmail.com>
	<20211206.073543.686.4@[192.168.1.100]>
Message-ID: <2d353791-85d0-d67d-f292-4c06e9c3115c@gmail.com>
Date: Mon, 6 Dec 2021 09:48:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20211206.073543.686.4@[192.168.1.100]>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


Thanks for that. You are correct.


Listening to 3 years of junk I missed in a particular podcast, 160 
episodes of about 90 minutes each, you really have to save your place, 
otherwise you'll have some fun finding it again.


Warm regards,

Brandt Steenkamp

Sent from Slint Linux using Thunderbird

On 2021/12/06 09:35, Linux for blind general discussion wrote:
> Mpv does what you want. To have it save your position on exit, hit shift q.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <Blinux-list@redhat.com>
> Date: Mon, 6 Dec 2021 09:18:39 +0200
> Subject: Looking for a cli audio player
>
>> Hi all,
>>
>>
>> I am looking for a cli audio player that can and will do:
>>
>>
>> 1. Play .m3u playlists
>>
>> 2. Is able to save your place in the playlists and continue where you
>> left off.
>>
>>
>> Basically what I'm looking for is something that can play my podcasts
>> that I've made in to playlists as follows
>>
>>
>> $ ls -1v |grep .mp3 > /tmp/1.m3u && mv /tmp/1.m3u .
>>
>>
>> Such a player would also logically be able to play Audio books.
>>
>>
>> If anyone can help here, I'd be very appreciative.
>>
>> --
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from Slint Linux using Thunderbird
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

