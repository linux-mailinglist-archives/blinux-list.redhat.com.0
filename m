Return-Path: <blinux-list+bncBDYIZZNASAHRBTNTT62QMGQEG7LOJNI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 380F193FD1C
	for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 20:05:03 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b7a167306fsf38309476d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 11:05:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722276302; cv=pass;
        d=google.com; s=arc-20160816;
        b=vLmhrLICX4lDeOPpueJNemPWb0AiFjIIaXABl6XuOWcEBTi59KnS652rqyQiiojMfZ
         0DRwYz7FMxZbnU1roWJuP0InCJc2oku7SYw3qCI0VHvhExqwYHWun3dqSHX/8fWStxFY
         HztwWsGjJNzhQjHuqqICp2ptFmzwmVa1qrc6H6LnCRye0lEivFjUKN3QejXYfaZV01uy
         k61njzWE+5a4AnvLDDozESm6rnQ3RMKvZcy1VgS5YO5ps6xczgCC0TM7GgfdysswfVUV
         14/c9wajMExkg7SfL/CAHuNg4b/lor0cZnblMf5ZT/MVsooAFoQk1lkbh4xHTMY0VDya
         b79A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=ItdsyvIXeMJzsmA3jr/M9bNiRE7NFV1p5QRXfNeLpiI=;
        fh=GQsc6FlJY+rB2kgy994o/M5/Q9S8OUGrn5Q4iVDXVeQ=;
        b=KEokzyNRWe7KbqbI5r0ebumBBunvgL15hKdHogMwGjWqpHv1+Aoxyq6o6Ay6cWR61s
         JKTy+KtnzfA0UCI5ME48HFoyDtkJmQ/5lFmYV3s/sb35ulMJExuTczxjP3dVfMQg8Nds
         3895TKtFOWzurrF4enAgqmRDZ1zw1pErlOP49APhAqCGEx6RBHS+1YpT1556ZNBYFhGK
         Ery+g/R0DRnjpfSdDHleHPcFPB/QRJV5ttqze2pGV5Wdk8IYKbNgtVrquSEdhyPUzKjf
         nd/kE5vAIgkZoNHITsGOCbhAU3GjxSHicQtryVd4whbohSGJBvaYwxQu+Of8pSZVoi6m
         I+SA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722276302; x=1722881102;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ItdsyvIXeMJzsmA3jr/M9bNiRE7NFV1p5QRXfNeLpiI=;
        b=QBgO377x7Otdp2iVvpBMZ7tkCJhTIcSvim+DI7+DFfgT/d0Zw646DRO3bQnmR2wwxV
         F9eZsmhVssEhTJIzonCl+OYg5n/yPmOKOdF6l5z4lubQW0twezZZ1ucsHRarpd6Mkvlj
         Jo54GNUuS27+QCICEfhBDS99hWY/7i/0oN6II3jyu+vw8VFuYRwO+ioD1Um8Sitzp+EP
         +WLteCAy9ZQbyMJvHWnpx1p87/AtsQgJEbdm4DDbdLZm64hZawZbMNl+YzHtt06/UyRt
         uUb1TfpIyTkwBp2AxXNMowJAS9AX6NrFqWbOUxMkiDGVZtAUXxToAKms3if8muA/QTAs
         SIgQ==
X-Forwarded-Encrypted: i=2; AJvYcCVNCl9U4VnHulQELEkelRRsLrl8EP1Q8Rh5WNMlm/mQ7V5l5leAcnyo/HUVbAEHkKfKI6/WA+H8Fsw44Hfxno5pnf9CF2tEzAjg
X-Gm-Message-State: AOJu0YyFrKSJfMaPEetpOBrt/+Oah4jMUJt+kCAifTTovB/1PatouVR0
	j2JOfaCQ4+rcZyTCgeh5nqAw+dzVIVJCdUNJpRJ93AnzYm6mXXBzmWwFuYcC7QU=
X-Google-Smtp-Source: AGHT+IEbXhJPoqZ/LNJhYOgTsYM/6mzvN8qx1ZNOWlphrCXTEcwripjIMV8aKlSpYZGuZ/HyXDY2Bw==
X-Received: by 2002:a05:6214:4017:b0:6b5:df48:bc7b with SMTP id 6a1803df08f44-6bb55ae65eamr72436446d6.55.1722276301831;
        Mon, 29 Jul 2024 11:05:01 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5e94:b0:6b5:e488:61dc with SMTP id
 6a1803df08f44-6bb3c296861ls61722376d6.2.-pod-prod-08-us; Mon, 29 Jul 2024
 11:05:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX66XTrLz9rT26uF3wO/mIuHVOnhUWWEdg+INmoqPKqxUA4F1zclJCUPo6byP0SYNHIQKFSAcFDibB8d+0Yk9IMqShQjbUszXg1sv2K
X-Received: by 2002:a05:6102:b11:b0:492:aa19:dcf9 with SMTP id ada2fe7eead31-493fa62358dmr5890896137.6.1722276300937;
        Mon, 29 Jul 2024 11:05:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722276300; cv=none;
        d=google.com; s=arc-20160816;
        b=pXOmGlahVhtqn2zAkzVCJldn8fKQV8HbBsY6kskuX4rn5EnaHEQuN/+aNxDO44J0xA
         R/+9CupfbD71kiMV2wzEpkskmrvXijVrW/BL9eR5kovinVpIJWuy/bb0Tq6tgDodm/+q
         NLICW93nFyZ8xIX7ezo7iKVVHyJWCaAMq6O6pr0wL9fgWTZrsDAyjVKJqsZ0WGkcNm+g
         +5RXdMwvjCSMDlXppg2EHRRqDfqop9pUopctW4D2AX8WsRdgI+Fk+oJAWf/WKOgv+ICL
         X6skfJf+/U5VHaFqK9m6cwUX6U2Dy5ZuQVtyiVgSwHxo6Fp96jrWXT3kNNVCxdFaYO0K
         ta0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=d+86BP/kSIcd1+NT0X9S0Ru2dFJpKXc4NpM2yiqfHFQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=DEbGeQTETmAWFXm5IgTiztLaMGS3TjIsXeH/vqBB7ML8YYcINOYVB9Vr3KgYDiXrNJ
         is9ftrT6eWXHPvRalQacsISK3v5gW7cSKxN5ie+bG4QR+3wLLeKQaTdNGMWB+6zAsXUi
         QjfYNsE7U4z8BVBr2KyA2twkgJ3dq0LohDJIZJjS6VtJJpxEw6dpuH3SlVcH8p3KbRug
         DaQdQCMCSs9QKrmcnR3lhhStv4AqjSz/75fYiyTsjDV5hG1+C2wbv1I3mhrlNX+Iub8O
         WeOu22tXWtip9gqlJhr532cDHN7Mmn9BS8DeMw68J4x81anhyMWYO2wF65GIPcVYKnWF
         QCvw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ada2fe7eead31-493d95fbd64si1886029137.37.2024.07.29.11.05.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 11:05:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.170 as permitted sender) client-ip=209.85.167.170;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-663-yaLqRadyNmGo7UGiJNru2g-1; Mon,
 29 Jul 2024 14:04:59 -0400
X-MC-Unique: yaLqRadyNmGo7UGiJNru2g-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 81D8F1955F06
	for <blinux-list@gapps.redhat.com>; Mon, 29 Jul 2024 18:04:58 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 735901955D45; Mon, 29 Jul 2024 18:04:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 709AB1955D42
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 18:04:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F37CC1955D5A
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 18:04:57 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-194-GFQh_uKAOz-PBFEZ8kITxQ-1; Mon, 29 Jul 2024 14:04:55 -0400
X-MC-Unique: GFQh_uKAOz-PBFEZ8kITxQ-1
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3db19caec60so2719980b6e.1
        for <blinux-list@redhat.com>; Mon, 29 Jul 2024 11:04:55 -0700 (PDT)
X-Received: by 2002:a05:6808:f02:b0:3db:27e6:8beb with SMTP id 5614622812f47-3db27e68d6cmr10676015b6e.10.1722276294362;
        Mon, 29 Jul 2024 11:04:54 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3db1341e144sm2176432b6e.13.2024.07.29.11.04.53
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 11:04:54 -0700 (PDT)
Message-ID: <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com>
Date: Mon, 29 Jul 2024 13:04:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: WiFi on trisquel 11
To: blinux-list@redhat.com
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
 <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
 <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.167.170 as
 permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Jude,

If=C2=A0 Trisquel does not have it, do you know of a good and dependable us=
b=20
adapter.

i found a cheap one on amazon but on both my trisquel systems it does=20
not always work. sometimes when i boot up trisquel sometimes does not=20
see the adapter and sometimes it does.

Rodney


On 7/29/2024 12:56, Jude DaShiell wrote:
> You may need to install the driver for that wi-fi card if it's available
> on trisquel11.  To research this, lshw or hwdata packages may tell you
> which driver is needed.
> The driver that is needed may not be available on trisquel11.
>
>
> --
>   Jude <jdashiel at panix dot com>
>   "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo.
>   Please use in that order."
>   Ed Howdershelt 1940.
>
> On Mon, 29 Jul 2024, rodney jackson wrote:
>
>> i have installed Trisquel 11 on a laptop and it works pretty well, my pr=
oblem
>> is it is not finding the built in wifi card. when i have windows 10 on t=
his
>> machine the wifi card was working great. how do i get trisquel to find t=
his
>> wifi card. This is a Dell laptop. here is the info on this system: model
>> number: PP28L
>> reference number: 07147
>> dell LBL P/N: NM508 A01 APCC
>> service tag: GYWXLJ1
>>
>> XPS M1530
>>
>> i know i can use a USB adapter but was hoping to=C2=A0 get the internal =
wifi to
>> work.
>>
>> if this is not an option what brand is the best for Linux?
>>
>> The ethernet works but i do not want to keep it plugged in all the time.
>>
>> any info would be appreciated
>>
>> Rodney

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

