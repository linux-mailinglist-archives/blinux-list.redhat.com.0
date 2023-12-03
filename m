Return-Path: <blinux-list+bncBCLPHQH4XEIRB7UJWSVQMGQEH54C6EA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 6201480287F
	for <lists+blinux-list@lfdr.de>; Sun,  3 Dec 2023 23:45:20 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-67a94e16c21sf41406696d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 03 Dec 2023 14:45:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701643519; cv=pass;
        d=google.com; s=arc-20160816;
        b=qrGkyKiM7uPUlL0W/u0ukQq+0fUg6wv4gJ/SZJNy1PnLgpn4WUbbUoYCVHAsWSyFaN
         lNNaB/jYSRX4LiR5EiCpxYNfqfraAisIq9y2Z56JYJSquCbSubU78mRheoGtxbPbGn0D
         yfLmMCFc34y0SpgWOVO44SxheQ2QJsFZ7moyBsUAkT7L4gjJRc3pOrFQYyR1BAP9CLpO
         LRTaxWfQhwZ6j5rcqVPy7U7Vr0KjBYH4HAzHZQLfoBYHUyZIffzG2fyecxJn1NocyWwC
         lojsCrxhFN/5eR8lvn6S+/iu5lsPGHHp4l5hm/VKo4xIb3zdXO5Ko7Wj9CybAaUB0Qwk
         5P9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=+FNvGb6DRvE8BMFIBsKWgVVHEUTBP1qbvDazDZZryuE=;
        fh=cmfAmPUxkdlE6k/8QawyoJ+RfGTR602B939b2oWmPxM=;
        b=jKYGW/w1aelhf3K2OPN81Fzs7b3DRcsHiRG/lyjc2beylmfHvtqJeo6yuh77BP1You
         xx8oAzh5bAIPOUDKUHM2YAj4sLyb1LnA26TgBbPr+NyuEUrdAzrGu4MAHAKOnJZkikTG
         f4jcwOJMEsrnBRXIuKzWNiu/eK1yS047DV5p8uAE5NG/0endO7nUfgJsWV9sPq6e8ShS
         7XxTioEyHOWmUCUnC8mDOaxajKXMwpUQbp2CuZzZRe7uTFBqZWORQkm5Ts0vdpArmgKX
         ao7Sq0eOEeg86MQoXIEkxRXe9wiL+J+C04g60nAC4NggUJdME1JbOtkBTNo6NVZHC5XX
         MDaA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701643519; x=1702248319;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+FNvGb6DRvE8BMFIBsKWgVVHEUTBP1qbvDazDZZryuE=;
        b=nKuQHcAUAEzanJAHa1oXf5afLzL+Rrawg6X4hBvXRFuu7Oh5u1Z/gP1MCyK3mah0mC
         D7QY1hjGU4SZvVnRNDZlAh52A16Who/XHzYHZZBh4Q8m3gz+ehCCGhNk3xcKSqrUlKNz
         lp6cGBjk4sHfXbGoziPuHFDAgjphlP7ou9MjJWnUuL8wkdTItWsQZDKm8cwGptOQpuFg
         xltjXvnz1pMSRIwvijfzTMIqhZL418bNUD+lB/OV7B9Hh9yfpSN76/7+i6Ei2yDz3QL2
         J9GgTS+OHBwD2+GjSN6X2n6PMYwFv8jnrlMUTHVZgA37+ySIkieTlJJ611L+IHO/85Bf
         KZeQ==
X-Gm-Message-State: AOJu0Yzmj5i55DwLaxGdHeabOCR1YssErHFxX7eICav0NV9ryc9ELaFp
	WK+JeCIxKkIX4ertHNUk9IAryA==
X-Google-Smtp-Source: AGHT+IGD0VjA97xdr55p0IPDRj0nw6L+J8KQ7usRr8y4I2TqVKLkwEHWVnobKMVh136AvvxKygIoqg==
X-Received: by 2002:a05:6214:186c:b0:67a:a721:d781 with SMTP id eh12-20020a056214186c00b0067aa721d781mr4237914qvb.103.1701643519241;
        Sun, 03 Dec 2023 14:45:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fde2:0:b0:67a:3bbd:90d7 with SMTP id m2-20020a0cfde2000000b0067a3bbd90d7ls1474005qvu.2.-pod-prod-06-us;
 Sun, 03 Dec 2023 14:45:18 -0800 (PST)
X-Received: by 2002:a0c:f64e:0:b0:67a:9ff2:68b3 with SMTP id s14-20020a0cf64e000000b0067a9ff268b3mr3702280qvm.28.1701643517910;
        Sun, 03 Dec 2023 14:45:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701643517; cv=none;
        d=google.com; s=arc-20160816;
        b=ONg+nKY5j+N9O5rggkU9Kfs6ccU0HgFp3Bhwu5A1eGiayYUSP/7iTA3ns/EQShnSkn
         ac0/Dxd1PphRfGjs89uASFQXqFQkUlfcubzBIhIUXQvmRJOqFEN4ma4VHFOK1pYMKMk9
         swK64QY60xGwFP7S+0a5CuOoRzF5f+utD29LH8LErai6w9D2FQzwY86jUDaftU0pRegf
         wyULfDkv8s+jJiPFnpBsUZVVslUY8YVd5zdjm7L561UsvNWsHTfLm4UYVPUaBcfm6g5F
         QPBChc7qcsKf15kfJ7scJ8CeVQsAISdcQVP3zKfYIUf5vwg2C1zVTRqiow9TJpQvmNY3
         xShQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=z8N+Pcj3XY7eVJ8+Bj8FDu2kGSpB/rARy8Gu2oIM21o=;
        fh=cmfAmPUxkdlE6k/8QawyoJ+RfGTR602B939b2oWmPxM=;
        b=vLRsSoQDpcPuaXPUEsSRhCqK9hO6eyvVIEPd11VuRg2IUq05jguDuOvxm+yqJqi9eL
         dTXK52OUSpmPI+H7352QoufkKx/4SVfzvi1H81PcctMVRFJr0NaSoQ13VD9CLVoxjivg
         tCvyUeuW5E3llRnbjcy12XgyGgtjTaKPqG5wKnLCk9rdTIMR6A+e4xEVxxs9kYgovsva
         IVpOLlhl6PAoyjTa7tthtMLYK9/KWt50uQb2qSWPwuhu21IoU7tvkrYLT/koxHwYJqDP
         Lj+m6O5ioQvio8R9pUcRjmyGaSU+tk1un/Tegc7d0F9J3nprrqC4oXq7HIp2KVC681Ow
         YmJQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id x5-20020ad440c5000000b0067a268c8cf6si7375115qvp.449.2023.12.03.14.45.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Dec 2023 14:45:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-486-dYBRkppyM0id91WkQOIxVg-1; Sun, 03 Dec 2023 17:45:16 -0500
X-MC-Unique: dYBRkppyM0id91WkQOIxVg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3EEDA821935
	for <blinux-list@gapps.redhat.com>; Sun,  3 Dec 2023 22:45:16 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3C0B02166B27; Sun,  3 Dec 2023 22:45:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 354972166B26
	for <blinux-list@redhat.com>; Sun,  3 Dec 2023 22:45:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 140C4821935
	for <blinux-list@redhat.com>; Sun,  3 Dec 2023 22:45:16 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-412-cgER-3ZvMkq102tKLmZHzA-1; Sun,
 03 Dec 2023 17:45:13 -0500
X-MC-Unique: cgER-3ZvMkq102tKLmZHzA-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 95C0E32102;
	Sun,  3 Dec 2023 22:45:12 +0000 (UTC)
Message-ID: <eb293e4c-cd90-4f35-973c-d7b64ee3b7c1@jasonjgw.net>
Date: Sun, 3 Dec 2023 17:45:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Alsa-compliant Sound Programs
To: Martin McCormick <martin.m@suddenlink.net>, blinux-list@redhat.com
References: <E1r9sxc-00D01F-D5@wb5agz>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <E1r9sxc-00D01F-D5@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>


On 3/12/23 15:21, Martin McCormick wrote:
> 	For those who don't write your own programs, this
> messagecan be skipped but I am hoping somebody can suggest what I
> might be doing wrong since all samples reference snd_pcm
> functions such as snd_pcm_open, etc.  All need a specific alsa
> library called with
> #include <alsa/asoundlib.h>

Those errors from the linker typically mean that you aren't linking to 
the required library in the command that links the executable.

You have to include the appropriate header file in compiling your 
program, and link to the shared library. Try adding -l asound to the 
command that builds the executable.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

