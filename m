Return-Path: <blinux-list+bncBCW5NIVR6ABBBWGW6CUQMGQEFP7RVPY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AD87DA270
	for <lists+blinux-list@lfdr.de>; Fri, 27 Oct 2023 23:27:54 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-66da680f422sf31794466d6.3
        for <lists+blinux-list@lfdr.de>; Fri, 27 Oct 2023 14:27:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698442073; cv=pass;
        d=google.com; s=arc-20160816;
        b=sIQVimog+zoHQjTbA5gso11/DBago5uwnjBq5Uz/2jh6uP447t4LTigDAbU/f0BRYV
         Uk0ZFCsfbVvU8u12f8EgpQhzP2etgMqsARlS2kE6TWZNrd6YOdzRkD5saL7XyFz7R2R8
         n2SoLjqehxZioUUZ7TV2MjgKbGGFLe18RMkO6EtBs27CF9jPU+V/HYGpeWu2+VEipGui
         uP/5xFU99phW0agjZX4Hhdm3EN41ZOGyIe+EaXECqceXC8mfL9Z2mxTYPf5ilicle1SW
         HrYjb/HlyoMaY8gHUKK82ilod2JFa2kHG7nuVSTRLOb/0V5lDSdP+OGKStkhQt+tNIn/
         9lbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=rCKzz+SbYduRlD3rGaxfHfBXGcxGrOIn7RhEYJhhPYc=;
        fh=NbaJD2uAKV4/FIqTd0wat3NgsLwCgLHQrdb54Oo5y/Q=;
        b=LN2/k/OHVsoIH0nfe7aGpBHka4uoMR4pT7gEHAgu0GRoM5FXW+GhA6TXHbqEl2k5LQ
         bRzCxBUXV5QZx/Mdl8MLMlBnj5VANb6JFwlPUejpLWOicTQj9dP7s2w0BfwGS7bWcOM4
         EL4r6QhM33TgvQdzo2HrzjVkGoV3DjDe5XKomlMZ4LccIfV8fQBa2HyQFIe5bCR+SPu6
         chqT1IzR53gRbx3WzbojwGLSOZaLWTJimsLXLK59/Ah6XL164PJ0c+ddBcY9hWnyElSA
         /o8mKA/RWK3txosOitWVNlDT+VnyWBwLDK8fvX9Knp8eIzHJKLLZzlQ4dH1DonvzFg1H
         jcZA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698442073; x=1699046873;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rCKzz+SbYduRlD3rGaxfHfBXGcxGrOIn7RhEYJhhPYc=;
        b=CzmBaPs8VBKOCqQn4zKsC3hjxSdmEiM7qfeT00jlr1XXPJjX245o7+GuUxdyosvPHI
         53uWhZQAtxrfr6HKamTpC3RA8UTRSsjJ6a2IkH9tRh//9KAJVl73P/GHqoKRlx7Loalk
         EzuxzTXbNhndX5Uag0X+qWgxZsV0DRGu93QwU9G6H9W8zapVYunAQJnl5SCSm4RMw5QZ
         FQCl12xijDFgYktHYnCNSKQNGM7XqXduanXCnzyH/yjDR0lxCJIr9ctU7ggiSxhHG92f
         dfwaNmGof0JoKskokSi3kMb0NT0h3xyVU1bYUadIdG5yzRe6dWWK79K9Off7vw430J2s
         VAZQ==
X-Gm-Message-State: AOJu0YyG35u0QrQ1bnagU5S729olzz2gIbCmzwbXA6iANvBg7LBY58k7
	x+GShmkmk+BCN5rMT6CE49jN5w==
X-Google-Smtp-Source: AGHT+IE0vWdBifycKGHizHWYxxhW/nBCP7Hl/I8EVhUDOaDWd2pLLXQysBIilDumvmRU4ovi5MNo0A==
X-Received: by 2002:a05:6214:29e8:b0:66c:e3b2:13f4 with SMTP id jv8-20020a05621429e800b0066ce3b213f4mr3965060qvb.65.1698442073325;
        Fri, 27 Oct 2023 14:27:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:946:b0:65b:2cc9:5f15 with SMTP id
 dn6-20020a056214094600b0065b2cc95f15ls1060269qvb.1.-pod-prod-07-us; Fri, 27
 Oct 2023 14:27:52 -0700 (PDT)
X-Received: by 2002:a05:6214:21c8:b0:66d:26d2:d249 with SMTP id d8-20020a05621421c800b0066d26d2d249mr5797939qvh.30.1698442072523;
        Fri, 27 Oct 2023 14:27:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698442072; cv=none;
        d=google.com; s=arc-20160816;
        b=hWIrtP46xXQy2vwpnzr9FhxOvQMnBHgcAMEAC3SASJh1YecWH1/+S2YzK/SU7729Mf
         99S5ttmO9S8ctoXWbMFVNGaPAAYpj0P5pHaxw+EsIstRrCdOjyxKDW+3S6h9ujNR9bv/
         6ka94+tSpOBRjDddjzRmwIVZs7bm4lU10bnYobxVbSKLo9coh2ZQpw5jDp1RBKnuJrub
         /WX3d87TVL/zSWYCjhSH1pkWrK6WRIlzt2JWGINF+kPIyGwYQWgSnB2glttossDGuVlG
         ZgyvIyeOexEYCaxWcUwpqackfZThP3Fq81y6Wii1dPmvn2AcvCUciGskSMmQ9+WPwR0j
         HAHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=1IGA4DxCZ9ZMJ8uWHvXf8rRBIvXeJm5UUjA6s/i9iNc=;
        fh=NbaJD2uAKV4/FIqTd0wat3NgsLwCgLHQrdb54Oo5y/Q=;
        b=vghbgdOIU8vkAUbGYPJTrG4bhUjwzuYuhzTaq6QnrUEyvoWl4vBIVW7UCLFH1gD4V3
         dc7yO9ngI8LuzecTFVTFMwjEY3Jv8qkylYaSzFlosDxB8KCe6Q1APsMmGcumv8WWjvRs
         tHB8Zgq1dvUdUqB23ZpszlW8WsdngZ5U+zaBjiFczDchF/az59GnaUzvVmnLR5xqFrB8
         JUSdW6nXJ7m2VQZixPhAAunfUL++R1qH36A/N0IIPhbCo1ZtIbJhDIrIwFhj7BmoaFyy
         3tiQytTl3+T8oHEXYcYqjE446vVt5wtFZb58spicydq901TRFSJK7/r+dJv290A4hByV
         QhEw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ee9-20020a0562140a4900b0066cfda15c48si1286707qvb.474.2023.10.27.14.27.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 14:27:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.54 as permitted sender) client-ip=209.85.218.54;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-474-0XvR-9XnNHegOVbXFCUL7A-1; Fri,
 27 Oct 2023 17:27:51 -0400
X-MC-Unique: 0XvR-9XnNHegOVbXFCUL7A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CC9DE1C060D7
	for <blinux-list@gapps.redhat.com>; Fri, 27 Oct 2023 21:27:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C997E1121319; Fri, 27 Oct 2023 21:27:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C0FC41121314
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 21:27:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 965B1801956
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 21:27:50 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-550-9DeVYn1KMCOMnZj4hOaGoA-1; Fri, 27 Oct 2023 17:27:48 -0400
X-MC-Unique: 9DeVYn1KMCOMnZj4hOaGoA-1
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-9c53e8b7cf4so389290266b.1
        for <blinux-list@redhat.com>; Fri, 27 Oct 2023 14:27:47 -0700 (PDT)
X-Received: by 2002:a17:907:60d4:b0:9bd:9bfe:e410 with SMTP id hv20-20020a17090760d400b009bd9bfee410mr3344706ejc.72.1698442066399;
        Fri, 27 Oct 2023 14:27:46 -0700 (PDT)
Received: from [192.168.1.16] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id gq4-20020a170906e24400b0099bd0b5a2bcsm1731683ejb.101.2023.10.27.14.27.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 14:27:45 -0700 (PDT)
Message-ID: <ec2a66e8-9e7d-42ca-acb8-20b635478e80@gmail.com>
Date: Fri, 27 Oct 2023 23:27:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com, orca@freelists.org
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: OT Dell Inc. XPS 13 9350 Linux related question
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.218.54 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
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

Hi,

I am sending this mail also to Orca list, so sorry for off topic here, 
but I have a question, which can be related to accessibility.

Someone told me about the best computer for playing with Linux, Dell 
Inc. XPS 13 9350. And it's really true. 8 Gb Ram and Intel Core i5 6th 
generation are really the best friends with Gnome 45.1, laptop is fast 
and absolutely silent, much better than my second laptop with Amd Rizen 
5 / 2.80 ghz / 16 Gb ram. But I am unable to install any linux distro 
using legacy mode, Uefi absolutelly without problems, but when I want to 
install it with legacy, I get an error about something with waiting 30 
seconds for and error, not found. So my question, some Dell XPS 13 user 
here with Legacy only mode enabled? Or is it better to forget old legacy 
mode and accept Uefi? Uefi has more friendly and accessible boot menu 
order manipulation and that's good of course, but someone told me legacy 
mode is the best option for Linux, but I don't know, why. So at this 
time, we turned secure boot off, we also turned off the TPM and we 
turned off legacy mode. Before I installed Arch Linux here, I upgraded 
the BIOS to the latest available version.

Thanks,

Pavel



-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

