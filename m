Return-Path: <blinux-list+bncBCV3N6GOXMCRBQET6WXAMGQEAKF5LRA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C34868730
	for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 03:32:34 +0100 (CET)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5a02a719071sf5302778eaf.2
        for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 18:32:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709001153; cv=pass;
        d=google.com; s=arc-20160816;
        b=A0lZWFHhD9zaOUCaTGY9QjfTnzWpT/ku0aFv3pGHnVxK7AuapmDDq8C5UQn65y9/ju
         A7ccDKxw/jJZa3p99wdrw5b9cBpgkfsT/d56auDE7J0wSvM6pO7MF20p0PeEkpjfKvWE
         dQG83qqGo+Su738EYXvqMmYXtjZnlS2p8ievjjnJoQzeHxTl5MKiqG2hBLSn3ZiZKAo/
         5OWKa0TNM4VFXxHNwxfjPrhKSB5QXTL5NnpGStTMvxTHpn864FubA+xw5SprPKEt60+t
         7hWsu02T5rsmINFgl0bnskv+/6DFcZwMwE4RDt1NVVA3xfutAoMnWpzMoRRqARctOUfh
         11Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=x9tcT5c/HtjY/a7HnGPP3bF7JkgmQG5/6offdWg430w=;
        fh=ickGdNBja/YHeB3LA7q6YZskktN2wdVF5Dsu1P87b3Q=;
        b=bD4CuKPfhCmctV6m6EeN7H4Wb0egUTKewT52AXAZuP4imZFGfcI5/46YQr/oi3NcaI
         Q/st5sBSguWlyOn00TTwOTJZQv56tTbra5XDSg6R/2M/EOQ8f2WqLZAVJTwxR7VyoaiJ
         N92y+wc5+yV9hqI77B3xOPW4mQaXRUs5sJayUDqJOA9MicGDh0CGdDBF20xM+A6Ts+w2
         0FRgnm2qGG4IjTVJ2nNfChq2mFD0d6k3b7XssQ1It5cW1ecCfP8vKpuKi65rkfkxKn4z
         67JSKCXwbPqwWvKIfDRc8vWGZjn+sj2qRVuOMcf3ZdmQru10wgo/K47P6J4/Fhsgz7q7
         vHVA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709001153; x=1709605953;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9tcT5c/HtjY/a7HnGPP3bF7JkgmQG5/6offdWg430w=;
        b=F8f/lATOEvdud1ydRNmeGmMaHT/4Fm25kXRxeSBUzkAtAlUca5EPVp1LauTL3iOJcb
         1xnEvMgbbKdk09ao3xY+KGDBSjXJmWVGAJZMRncSD5gTbdgm6oTorPRLxabQT/NjtHBN
         IPGHDRIYA8996Ejw3949rZT4UIXCRolnp8Y1hU8U8luF5dPQSRFWnmB18ykY6SQA21aq
         tzQrftblKTgKOXrBRJd91sjOEwiWIJOinfBKb8kpZhRMBK1vjCWfoNulUgIqwFGVLg4g
         sxlKWcb/MEhKUvihHHH6snxCmJhxt6NWMpV2QYWME11NUY7wP2Vw8uxjsj8xbANORv8R
         I6Ag==
X-Forwarded-Encrypted: i=2; AJvYcCWCkcWZIV0qwMCXEs0B2VUPHnfSbIMqN7ZZutUTJbiBXJgy8HhPiDK1Blli8LNvn9ftLpQlpSKRKO+zKj7crYAYuCkKTzQGYu4J
X-Gm-Message-State: AOJu0YyWSZtGJ9m0XMV0BWrLW7S4538LjCWTkbmEHERQn+uMzMytKWtl
	8NlhL0WTQ3jAERIKbe2Y+WmH+LZaJTWy/vljignuhcjW9l8Iut3B3ZH0FkDAQws=
X-Google-Smtp-Source: AGHT+IESANhwZfhIm5fLV40v0RsEPV8X08rf7hEgz7LlU0r1xLLOPTVyxd6FO+4XR+LKo8IHsKF/bg==
X-Received: by 2002:a4a:3c1d:0:b0:5a0:3826:3b05 with SMTP id d29-20020a4a3c1d000000b005a038263b05mr7648208ooa.7.1709001153299;
        Mon, 26 Feb 2024 18:32:33 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:55d4:0:b0:5a0:3387:2adb with SMTP id e203-20020a4a55d4000000b005a033872adbls2488121oob.2.-pod-prod-05-us;
 Mon, 26 Feb 2024 18:32:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXzSnZr0LRa5qTrV68FCEXaKLq23mF/0VS+UvbaKv3EDois1Zd00dyXdHWrQ99LPsLQ7pM8Of/CzGescoLAaNtj75f/+2t3T9W4cb1w
X-Received: by 2002:a05:6808:2187:b0:3c1:7019:ae9b with SMTP id be7-20020a056808218700b003c17019ae9bmr1119051oib.43.1709001152476;
        Mon, 26 Feb 2024 18:32:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709001152; cv=none;
        d=google.com; s=arc-20160816;
        b=Gn5wd9GBmA3RgoTQ13U20HOxLHwakSEY4ni0ShKT+zdfsl31p2YwJHUrI62ZM+3d4W
         QLQk2/T8fBJ8ZgsA8y6KOwDQ3q9ORpPrqijSyQXswMs8EYZ1M6UBYtdUN7qG46xIGRNc
         jGS5isVMdTvQssk3FPwP0y/RkHAN6FTvjRdUn/WQLlPQ0QZDPJh0HqIHjSA0HJdSne2m
         4urkzv6AB8vTclDc4FwJhEl/ibMx5pT6gJR0NY5yLMQsZUC3BVHBqxsFBlPI9kihEn/B
         2uqcfcdfhGQzImKH046cdVjR8r2twxu/jJqm1/l1uodp/Yr7i09WmO7kpgeytb6stz+U
         7DRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=RDqGoXBkRYZcyP53f0OIs5GtdS7DGrdcdKZnPaHXUrY=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=y7vk1t0Pz5cVgl/8ulhqHIpRjRotL+55IMC6NUpfwqXtfhcANsa9SGkzwH3NTP+Fb1
         3ydzUlu3sXvJC0bdn23duZ214lmKEbxa/qNGxKQv7v2NNC5K/9KEkfxj226lX+If0B7M
         ZkIbG7yv6HGtT4BsW3WL3hvH0oRuTxKWSSMXbW/auIQz2McLmFQ2lj5uAOHrMOYreJ6O
         jA82B7vkvjJsvSMSXn9njwPOcxAfu7kSfQ7Zf5YyZfqG/h79wichE+tzBDZ/AAoBW6ss
         zZMs5cFlJRPWRdr0EHcNxJx5H+fDemKx+PmQI8j3AdDxi4v8Fb+4XCzkpHnZ8azuNboy
         wjHw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id r2-20020a05622a034200b0042e7c220d96si5369126qtw.558.2024.02.26.18.32.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 18:32:32 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-410-qeWKya4eP06O7qjIqJHYVw-1; Mon,
 26 Feb 2024 21:32:30 -0500
X-MC-Unique: qeWKya4eP06O7qjIqJHYVw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E6FE299E756
	for <blinux-list@gapps.redhat.com>; Tue, 27 Feb 2024 02:32:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1AF902166B5D; Tue, 27 Feb 2024 02:32:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6F552166B33
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 02:32:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8241510AFA03
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 02:32:29 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-694-t4nVQi2bMC-pqrUZLYsw9A-1; Mon,
 26 Feb 2024 21:32:27 -0500
X-MC-Unique: t4nVQi2bMC-pqrUZLYsw9A-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.20] ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1M9nxt-1rZ2VA3fld-005pNC for
 <blinux-list@redhat.com>; Tue, 27 Feb 2024 03:32:26 +0100
Message-ID: <fc7ed743-6f4e-40d8-b41c-d95a3f8b06bc@gmx.it>
Date: Mon, 26 Feb 2024 21:32:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Keeping Orca Talking
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E1reg56-0002ET-Pr@wb5agz>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <E1reg56-0002ET-Pr@wb5agz>
X-Provags-ID: V03:K1:BbOAVLXTDeyuTtdM7yvY0yRZUtybSte0mODYYsupvXBshxLnxLl
 Q5fazTZM6wLjSKAOUWwEAt8Yi9KGD9bwuBNZJvMYNmd+64v1Cv29sB/krooTTaF+3cFuAWb
 R8mtJGI8onQWah58U3j8xaLEifCPiCwNOyRC9VuCIZpG76U7hJ4g/PnWAQmiV0yJ2ngdZWt
 vA5IKDvJqJFn260w6F20g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:gBQy0a+hj9U=;4OcgUGRy2vNlqtZQpG6SP0fBR/o
 uwrnu59tTa0/W2XOn3UwzszQD4HR0AwFOEXHVT3FnLR3lpHts3SE335yGXe1BiHeAqCqjrM5Q
 070RgV8w1LOSD1LbYzFKYm/OoFPXQT33vZXyBd8q5fDCMeBgQtvtSOFneztTt4/0vacumwr7A
 zFeV6slxQuMZ4QRQqhyKBcZqdeVmiZ3IDqlU8ybbqH82tZIRW0loe7GU0/iNnvzKD2evqIFO0
 TVqPF2evCzwqiGsHfta1bNTKFXPIj20Y4rOq8eJNM/bq80hPdR2lnoDrNo8HWagDo0d6FmO0Y
 KNHlWOtKVzHT3t5/OHzpm7RdWpBFtTaDzJ1RCdzXnqtTFDgNhn3ElEUNy5Nbr+U9XM6dJrfG2
 FCwmgOgmsbJGRhMgCzV1ayPAr4tR9y3Vc7v+UC9PxUvFB/2mu77xdNhRDCvk/Q1ENel7tLtwZ
 +U4tTviPgFuUiwlJjvwiLYu0eTzVuSMgl8+N1b64EVh8CG3vS1lxy74od+87sPXOw1e5cIHB9
 aNEWgQTZgZswuHTAHnsBwtylUhTu565DvXNA2IVQUWWzwmt1ibiQNSWKskT32LPWD9Ae1rnC9
 9dQjoSA6ssZkr7P5uPMmFBZUk0gmEQutQNkAY5Uy5ETrt9/rHFVn74YMkjwA/nw8pmHX5xj5D
 2zg08s5HDH7XEm+KLM9OM6+Lvs47kNRUsw3RmhBOM61YIDM5rxkFJCzx7RPJ6S+wPvPfKrlei
 NdSag9lGDzedrKtiNkuX7BBJ0CR6ciUkYQMDLW+Z2WQB72+LgSv5qZI3AjcX7av2P0TtkEnpa
 BIQD+JKf4maUQeN6A27USXERx0GHefweqfYKiMLD1WUHk=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

I generally just use the sound settings available from my system
preferences menu. But I'm running MATE on Fedora here, so your mileage
with this may vary somewhat, or possibly quite a lot. These days I
usually try to stay out of a terminal, as most things work as expected
from the graphical desktop interface. Still, I do find some things are a
little faster in a terminal since I still know my way around a shell
just a bit. Sound though is not one of those things, at least not for
me, as it is quite a lot less complicated now than it was 20 years or so
ago when I started using Linux primarily, though not exclusively as I do
now. Those were the days before Orca, even before Gnopernicus, when the
Linux terminal brought me back to the days of DOS, but put it on
steroids and made it much nicer than DOS ever dreamed of.

~Kyle

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

