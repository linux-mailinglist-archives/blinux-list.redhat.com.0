Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0727B469974
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 15:48:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638802107;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dQhxL7gmfeDXpHi37v/3oMPV+A2xRY3Ks2AZM+SOtm8=;
	b=UJHFqrFx+bm8dDHIbU9G/sjJHOZALXJrIlTnna4gFRSiACYjxA+pGC9AAWB2mnU8+X/JCM
	slDCeuuHcq9GX2w0swELilz8B30zTZiGgTOOlMVyZqBxLxRulBYVTzH6PLFOBgjZaj6+I7
	uHa98FiFYD61bUnmRPN5V0ggKassaac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-460-XvHELnNkPwmfoLAGAIpmBQ-1; Mon, 06 Dec 2021 09:48:24 -0500
X-MC-Unique: XvHELnNkPwmfoLAGAIpmBQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE375101F023;
	Mon,  6 Dec 2021 14:48:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A75145D74;
	Mon,  6 Dec 2021 14:48:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 308851806D1C;
	Mon,  6 Dec 2021 14:48:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B6EmDWZ024552 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 09:48:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4F37EC202CB; Mon,  6 Dec 2021 14:48:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AE6AC19145
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 14:48:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3167A3932D21
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 14:48:13 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-86-ZYPV8wD_O_eyf22ExwYKNA-1; Mon, 06 Dec 2021 09:48:11 -0500
X-MC-Unique: ZYPV8wD_O_eyf22ExwYKNA-1
Received: by mail-wm1-f47.google.com with SMTP id
	n33-20020a05600c502100b0032fb900951eso10582238wmr.4
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 06:48:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Adw3e6WG7kp6+nXWvIgjSOWiCwFEcUhLxhXIq5AdWjU=;
	b=sVjH7sOFMQfVH8unSzK7jKbAfUUNc9v5i9t74gMZv/yTNvlp7Dr7K/fN9fhKvPOtWH
	Oe8XpO5f2GfaV1AMfW4uRop8VANEYRoTTJzuf3zH4jy9Yg3g+3O9tr5fgiLW6qUsZ1vl
	l04WbmdfpVQCDJWCoDAPeE5+kdxc6sSgJaJK/Ks+TkLGwVt/YwOZr+aWtS2dVJ6QNTjl
	VozrnelKCp06SABoRaX3P63zS1msfMmfTuqctp5scRqbjoMnAjZ9cl4MJDMu3P8bpfp4
	+X7FnKxBYR+xiLcuedYkuNzoo6zfe9HDSOE3aR9mAjImEq20xRDjyUa8Fb5ZNDtnITaP
	xvDw==
X-Gm-Message-State: AOAM533lAdKdSgSlIzdss0JNiyDRQzeteGRwIQkiV61m0lYGDHviml9r
	poSWHyOTV67HU6Xope6UqseqbQ65M1l5GQ==
X-Google-Smtp-Source: ABdhPJwpoWV5Nz5KWUsRTbrLE82N4ww0m7ln+f+ZSu6V2QvmBNtNfKUcenEVuzWbORIbndu39iSlmw==
X-Received: by 2002:a1c:a58d:: with SMTP id o135mr39115972wme.93.1638802090191;
	Mon, 06 Dec 2021 06:48:10 -0800 (PST)
Received: from [192.168.1.221] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id
	e24sm11991109wra.78.2021.12.06.06.48.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 06 Dec 2021 06:48:09 -0800 (PST)
Message-ID: <9ff2f013-4176-2dcf-b434-1fb2863c4b55@gmail.com>
Date: Mon, 6 Dec 2021 14:48:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Looking for a cli audio player
To: blinux-list@redhat.com
References: <46c3cb8a-2a1d-ae3b-7671-9e5a813ab3c0@gmail.com>
In-Reply-To: <46c3cb8a-2a1d-ae3b-7671-9e5a813ab3c0@gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes, mpv will do both.

It plays .m3u playlists, and for saving progress in MPV you hit shift+Q 
to save and quit, if you just do a regular quit or alt+f4/ctrl+c it 
doesn't save your progress though. I'm not sure if there's a way to 
change that


On 12/6/21 14:42, Linux for blind general discussion wrote:
>
>
> Mpv will do s you request on both features.  A book in a common format will work like any audio file.
>
> On Mon, 6 Dec 2021, Linux for blind general discussion wrote:
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
>>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

