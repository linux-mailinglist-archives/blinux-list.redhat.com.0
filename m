Return-Path: <blinux-list+bncBCS6LGFW6MFRBLNEYK5AMGQEBCJH3KA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 5135F9E41A8
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 18:32:31 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8829edb92sf25728076d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 09:32:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733333550; cv=pass;
        d=google.com; s=arc-20240605;
        b=UxIaaV/LlXLI8AalNWbTegNJ8eHJbu9NfZ/3C/dQb0cILmO/P+1XYlbsJ4K5OT6PsY
         ZBk1EfQI++TFDo2qlpKjMpNQSJRjrcnKWlraMc446uxFpRf7C77Ae4coSfm0QpAEyJ2G
         E1rhGBdJijuoLAuKwId7pEqgsKk9olgdYafjJw17gRtTNOAOggf2IkxXwBrVweqbSt7O
         UCoh8j9faYOVnsCpQuqyeQKWzcb9+QY/ORMFZl1xJD0iMW9aF64MIvfzvWLGeZLzOGM6
         4sbWa/HVsldi19atprsL42iq69wZIGlPQjCCahpPTrkfLWZKSFrSdNi2VjkTWtI/fsgM
         P2vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Fuuen/UPc5qK5gi45onVv/1HtlHA2BjyCD46hJkcFHA=;
        fh=YQPb+UiV3SjE4yT1jAQ7h3j6X8l5qcbgdkgl6z8tVrg=;
        b=XBfzCGvWSKRbB8GIapK8xP7/Tv0JvGn6KreT3/P4zMIFKvdJmdvc3ZgOKuXZXwQIgm
         5zW4MqPiazDcddhYyRZWD+l11F1wAPQU0aKB8w+zmxAcP+EQ4KG7mFetwHjDMzhurMgm
         VpTW4T+4sR+MjD/OH/rWjqRPMQj25MzlKrU9d7TFirOU0cFve1WhkyNpY3KjX+YiFTIK
         8PE0c5vFqIlZs9a6Y5lXRyIw95obeYWWUqggF5TytQD7pQ1l7JhfgtsCOddWu6VGio60
         D3fZlZa3ullb1IrFpgqm+A6ni9sgtDha+W0QU2J4AVsSBev/xy62d+eDsCX1Qcfyo4Tb
         wwHg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.15 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733333550; x=1733938350;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fuuen/UPc5qK5gi45onVv/1HtlHA2BjyCD46hJkcFHA=;
        b=lQP2E3l5Z/OupVNocmjbOlF1z1fUtKxvJUTK+WF5X5WSmLpMjw+shEi5waS79uiEYi
         G1wCfVsjLjEv78CaicTWps+j936f0JcvZHAIdEjog0QdhpBAg1/yZ4FZiygyxLX0ur+X
         7nVWnb8fbP4G3x0S0MN7QnJqDfxcxfRBkh+R427qR6QPniVLiINrS0qzN786TVBKmC+V
         jHZfxjJTcOd/6ChPbltu8MuLficCO6MGKvK/H44ajEKgar1QdhjbGmPlgwulRjb5GBP4
         QMj/08sLTb4CD0i0/y6sMHlIb0f9mqVVFGJw78IFotziqCDyl57APZ6HiV9DTD6NjCTe
         rSRA==
X-Forwarded-Encrypted: i=2; AJvYcCW96MssnD6woL3SmEuBGW729ZaSqVChKd/psTCJUYeXQNCjNHK3qsK9LHCxyYLBs+YbYKDIcQ==@lfdr.de
X-Gm-Message-State: AOJu0YxGu95GUk7D7lu1Pd5U0omGm7xPUQHJubijVF1qHnKhmc6bIHzR
	RJCorBhv604bDfGpklurW0Wp2iQDI5mQjv1f/ZheKHlhrciGJUpgNO1qshmimlo=
X-Google-Smtp-Source: AGHT+IEGbDG78mHMBatE7RK6b9Rf9xxOHddYmDuNc/Bw1BmVtPEkdyqKyDw85gjfhE8KeDi+ZB2/CQ==
X-Received: by 2002:a05:6214:21e7:b0:6d8:8e57:59f with SMTP id 6a1803df08f44-6d8d72100a2mr2904296d6.20.1733333549762;
        Wed, 04 Dec 2024 09:32:29 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5015:b0:6d8:a5f7:f0fe with SMTP id
 6a1803df08f44-6d8d6b33c14ls1233716d6.0.-pod-prod-00-us; Wed, 04 Dec 2024
 09:32:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVH1Haa4jYBaMDyhPDgfGBRDbmhezsqWOyv5CcwAuGgfbNWH/3GndLSYJuImDgK7kgDTLBR4EAtNzQIgg==@gapps.redhat.com
X-Received: by 2002:a67:ef8a:0:b0:4af:456e:5427 with SMTP id ada2fe7eead31-4afb9534a48mr352074137.4.1733333548407;
        Wed, 04 Dec 2024 09:32:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733333548; cv=none;
        d=google.com; s=arc-20240605;
        b=IVIY6UTtX5Lz1euNm4cF7PHmny1ObHRB5aB4RqS6G37OlY7XE+GlL+vd6f9ySxnGOo
         +uBhWm6dI4uQFB+LTb3pZaByCprAc/CWUNZr+J3z021gKJyxK0gs3qWnxqmxZwGP1VhM
         DU0JdMrRFGu9z0cX1AXXNzYs0FmZys0FExQFEd6tDOkE6hUUCokrgo7vtQWC3bMQKqVB
         2dVZpuTv7DeH2BPP8+qzv9lW5QsX2ARYsV8kwY1LffvU2ztSuanUbpS5kwxF+4AXymev
         qzJZkKndxaLDWUBWsG+ILYRgFnMxZw5/ap27yELcoGORp0US58weNnjAQFYEaRh8iXrO
         lmMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=rA/A0b+c3RwLh+bYUoETOWgH+zLpPoNLs03T7EPcbzk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ieSW/bpSPTg4lc6QHxkIzSVG4VOl23ZHfHLfVPlGKFc5f3hJsYB6Wq5rdpBBn8dTNS
         WsRMulcdij/fuYcfnvHFNNrdR4Zm+fx2UUSHg6/zqwSucvZC2u4gkUT7GcqIGfEo90Cu
         jzssB9Rf5is6BjvkteR1zKHURzhh6MtieFW+WfPqXjMWG5RWeSfnnfczwdKXIeUYKKCk
         Q75/3hwo9uKOhHMQGXPdTrD9w7ZoqoVm6ZpesQuBdDw1F1OGkmyunpBWxjPFHp7Au5tW
         Ze+EYtycXqK7s3kzCG9iob2GpnP4j76zZdItIiUjfomt1XWuHIhZVtWIMI4h5q4oFzbR
         34tw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.15 as permitted sender) smtp.mailfrom=guenterk@gmx.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id ada2fe7eead31-4af5936dfddsi5691005137.509.2024.12.04.09.32.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 09:32:28 -0800 (PST)
Received-SPF: pass (google.com: domain of guenterk@gmx.net designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-206-by2h30YVO0Keh4fBqQBGMg-1; Wed,
 04 Dec 2024 12:32:26 -0500
X-MC-Unique: by2h30YVO0Keh4fBqQBGMg-1
X-Mimecast-MFC-AGG-ID: by2h30YVO0Keh4fBqQBGMg
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AD4501977034
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 17:32:25 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A8B8B19560AD; Wed,  4 Dec 2024 17:32:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A5D7319560A2
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 17:32:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DA8E21955D86
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 17:32:24 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-342-LozeYmIsMI20tfOUrMlK6w-1; Wed,
 04 Dec 2024 12:32:22 -0500
X-MC-Unique: LozeYmIsMI20tfOUrMlK6w-1
X-Mimecast-MFC-AGG-ID: LozeYmIsMI20tfOUrMlK6w
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.175] ([79.231.8.239]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MEFzr-1tT6Uy0k1l-000KK7 for
 <blinux-list@redhat.com>; Wed, 04 Dec 2024 18:32:21 +0100
Message-ID: <94c7528f-df0d-4648-b8da-acadaba3460d@gmx.net>
Date: Wed, 4 Dec 2024 18:32:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Might 1 of You Please Remember?
To: blinux-list@redhat.com
References: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com>
From: "'guenter' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com>
X-Provags-ID: V03:K1:oYBZDcIfVoUWX1o6ETV9+kNEpyKjpwMjNYFmafDsE0EPapvvBbO
 EnGudekARzVAHm+bpifgCA/URU0EkGNcqXkiDKtE8Ac6DR75CJopYugkLsF4dslZj9JTqfB
 6QunOh6ztFp+JcbYOZWZajHcB9l/XrGogFU8ceIs3GwVTE80NNyzepI5dv9J1Esv5CGbcHP
 Ugwgj4EUhX5V2oeYm/8xA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:9MlZiyiJekU=;VBWNOU6AmxSRtuwFfxzj6I5TU5H
 46o5lZ/bRccNBSpn40uo9aPt7Txzw5EloKlv1JSIdc2habruLKgxoiL/2/93+qYh/w8PcGtlS
 TIazTRkhyjzyygJntA3yt6Sk+HxtgSEJIPRsMklv4ri0MdKdukKfTPJSxSxNK+jhC2esYybLT
 b679SIv7khjgCF3w6LXoCcJunlURKzXW+m8wns8c6IQpGqttyHJKWa78awpBBYlLvAK+rX9dG
 yAE3R4yjkE+G99VFw2DAypsdY+gUKhFjWWrEHnssLv3RsdmFv1JPPOvNU0tgQJU+rhDFMRAw5
 uchxCfLlXU8MzLRtWMDLIuEGk9uYfapmmYsvqzBCTuYAshRcnSTHd03n/FmjVEdjLgglvpyDe
 bx/VW/Kk+KEUZGKZjiSqwy51N/1QDjJT8V3kLCa3o08cK9ATwmWPwwpNf7MmdWMvN0w+yLL8b
 WFfPuqWZZMJRy0NV/ShscrAV5SvxdWXiS/xNp8m7K/BWWH1Hz/SQ/WoaaF8/3PknnOvs0aT+A
 GAIaRhstWLcS3y5aTlEzSameDLS2C/4sBZrKP7kIkcNPoiVGM7m9JpdW5sXlqsw/sSilWsjmH
 Es357MtnYLF27D4oM8XVXIyT72XECrgA6EFh1ucQ8a9/CUEnqADs/V5O4nSyrcD10WofaYU8+
 6UL9tq5/lUqGR1qdMwNEgplyxSIOx6BT7YPtigKnfcFEyCi/KvowcfdX4MvnB7WAXm4/k8LON
 CB6oArdDnWM2uY0fxku1h3Pn/HdeqkROpET0r8xDJDz6yTyZwNvBTM+DwHWK56QS7JEgd9KFT
 nXxkqteThj8rMuJ2zO9gvbmzff8pC7LTrCxBB6NYh1msqk3PlfMTde4BHKBlTvZUtqWochO+o
 RKtZO+qwwKnOmfwkogVDrMqUrGD++x13Ze+NKqMiZx2Nwh40diQpSx19zq15+a7wix3AamFeT
 yGyqIaamfCIbsc427mtO4C6g59hygZWfqoF9boyo3LeGg4Vek4e0EQeFOd5lHZqeDGAz8ImJJ
 DKphW3W9gKHcr40yn43RlE/bcz1R5APHaJIC3Uk6tV1NjizwcvnEP4NLBUMzQh4XZO6ckTFqb
 fdwWpvZqvD84CGri7DPWUk9CYkWseH
X-Mimecast-MFC-PROC-ID: Q9O58szxxGoU9Z5XwmXryW9BJhnFapwU_nkEf8gFvIU_1733333541
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zwtSIr1FZQBCDu9EGmJt20qugadxHgRHbbs20JCBmVc_1733333545
X-Mimecast-Originator: gmx.net
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: guenterk@gmx.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guenterk@gmx.net designates 212.227.15.15 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Original-From: guenter <GuenterK@gmx.net>
Reply-To: guenter <GuenterK@gmx.net>
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

Hi chime,
following the old thread here you fell in love with
send2trash
and
trashy
.

your post from the mail-archive:
https://www.mail-archive.com/blinux-list@redhat.com/msg08735.html

hth
guenter

--
.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

