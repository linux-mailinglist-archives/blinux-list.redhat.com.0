Return-Path: <blinux-list+bncBCS6LGFW6MFRBVOBYC5AMGQEURFQ7MA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 705859E368F
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 10:28:55 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b678f64ac9sf148226585a.1
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 01:28:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733304534; cv=pass;
        d=google.com; s=arc-20240605;
        b=akU2rAXgfxunUBuS8AWstsrBXgB37CAVhiFliU6dzkteXxy2xvfuwpBHwbmOcCOi+d
         9hVXT+0be4vcxBueXBCqddvFZ1MsPyFVm3oDc39W2gY26E4rcR7u8v1gJsgik0WkREjT
         XYVLgktjYBjTFQwv8qgEUpzOMQ5lS/d9e7KjtWAdF5y4k/Pz1SlbSblWxxLSlu0i31av
         NwbJ0Mo7FX9l0WMR5RiPyFYAXVvcdnDRvGE1EHH/yX98rxEj8uFE4c42raoLQ3UUH84P
         Jm6p13qxGo4cNHQpH/An+h9A/IvsQJLpFKV+sxUqRkYfOpf78Mjqi7d4kg/WvPWrOHnP
         mo7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=fsHYIho0RW4fQNDS4Cg/4PtjwLZDaHPu+OWE5e7Uamw=;
        fh=1jgRo4poHrwT4W/hq7jyrS4uTmWREdpZe3TAUppDYeQ=;
        b=GKHVhz7oPwRqvOwrdtDd0/pz5qFhBCRUDd1MNZg8jV25sLKfsV3Lb6dJfcdbAm1JlZ
         SY6Z7afXpsvEGrcQX41B8OBbdd6hq2NoCx0cqVB9A3LDaEhLx1gw/24g5xrxm4uwKKI2
         K8YeBa+KXF250sKyPQp51/Lj01F9bcPZupCbFM5k1edfvN9+z1slin+UouvWNvz50H9C
         40MAgFIlDjkCwlgPYQErQ8JRDu46oUBvOz6SdwCG/XsonyvY+dzsf3A74rML6wpjK6xi
         ZbKBY/h9BDiq2EkROxmXghkRImHLWHTgcWtzc5nhzkEcxZ7GIVL7gHlCRmL0xnlJg6iM
         t1Aw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.19 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733304534; x=1733909334;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fsHYIho0RW4fQNDS4Cg/4PtjwLZDaHPu+OWE5e7Uamw=;
        b=kgVatHEwlpEXvuUsQRlZaMqvr15LOj6aFkaACk6HamS5giGAP6p5eYbAL1Q3mtvUe8
         pzBJbyiEOF0pgDr6hBkCTWNsyMNxUZiv3y+KkqcOPa6Y1tMN20PeTEuOr59GobpyuzVw
         TUEpJJjikdDlK9jZTOt5SGgPGjNQ2r7O7JsY1G2cUhBDLrG2bG5rK6zYWQ6EC76YhjSN
         I46TFcbY6PcSa2RB2te9cq/SPl5vXxGeEIo7Z5nVWWwc81dzZvnSP5Qb5/Iw1eVqWwsp
         ow4pKBJYaDLez1cicX2rXwYmIoJZ5iejanBzScaqOPAfv00hVaw07hRit+8CVg0OjqRK
         e1HQ==
X-Forwarded-Encrypted: i=2; AJvYcCWol3E+PlbUGizwUeYbdQWePysUxEHZu4HctJc1ushmSor381VNFFoUlsgeVWu474hCxjJNTg==@lfdr.de
X-Gm-Message-State: AOJu0YyMohfRI6n2M37CDzW+p1VJGBHHLSRWfiLlL09uWZUMvhd2nq0n
	UIYj7QcwXLYnaDa0U3EmdrC9zt0rNNjh+PAsgH0A8WOWevmQqe9dE408P0/hZtM=
X-Google-Smtp-Source: AGHT+IFhd1bXCte55d/rx1V9cs/YNSJWpr6aXFS1Qq1GKvZJ5wm+sl59FHSGdU5Hf9ycxDNuetQO9w==
X-Received: by 2002:a05:620a:8081:b0:7a9:aa9e:3a9a with SMTP id af79cd13be357-7b683a177c6mr5120835185a.18.1733304533975;
        Wed, 04 Dec 2024 01:28:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:580e:0:b0:458:3f09:c712 with SMTP id d75a77b69052e-466c1d20c4fls72959441cf.0.-pod-prod-00-us;
 Wed, 04 Dec 2024 01:28:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUOwrTqbgDIBRahhSyfZ77+IB9FIByzSoFR/BgQsUOReaat3PoEzLIyMNNnw7EWB4yMmSfF3omcydc4xg==@gapps.redhat.com
X-Received: by 2002:a05:622a:30a:b0:461:22fc:73da with SMTP id d75a77b69052e-4670c754c2dmr102340981cf.16.1733304532863;
        Wed, 04 Dec 2024 01:28:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733304532; cv=none;
        d=google.com; s=arc-20240605;
        b=QFByy1Qn4+mXHkTFEPpU4ny0drSOh9oBo3pEmr2cj5jN4aCnRtGjJ0zxwA24Q6T9cP
         PW8znSzt1w+0Skfwem3poCTte6UssFUCGmELL/aBBL/LALnNfcaWA5IN8Voshf0IuhsW
         NSvfrU2GYeND7OIzUUtKp6NE7xSnMN3ofx7WuvUeK3L1mT6n4m/Mj7TsJSky8mHKosXJ
         Cfch9sCg0Og60OF0TzW1Ixc8HmGNLPKCiIOfaA7ew5yaDLTDGPE6XJ2ZIbmulnxy38/b
         MAxmWXSIGfmR0bekH+DdirNwjQipATPgwez9z7duvMYNV2OaQP3D0/pDNyiYqY1ZH+06
         cseQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=T6oKgR+PYGO2QGfhBZfSGsS0doEV7bETjAO4QOrrpcQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=MVL9pfuQ8NkR4U8KDSweLRyZpqv/4Dzkd7qduxTG/bqoPXAvt4tdvXKLhekhX0EmZs
         KzzSeKthFcLdBdaFFSecmkLnsGZkKdYVPlTU4kuTT4vC8ULwurEP6L8Z4A/ns287+2NQ
         C/lwzZVD/j+OInhb7yf3kpBmqpgw+SUB7TmvuJNsKFUOCPMB/JktI7/rnZuiNfvQEDUL
         WGJC0p4iP++LFwobPpl0jzysrWGTfppY0rb9s7KO/vXUMPBesHI6dVS5WIIE98YuxgfJ
         F74VvbbjCyTWBgkLi+sQYAekhX6/Xug/b5hdqoN+WeCHTbEbf3x30gbHnq0d6bL0ihug
         GbPg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.19 as permitted sender) smtp.mailfrom=guenterk@gmx.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-466c4054be6si161741561cf.69.2024.12.04.01.28.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 01:28:52 -0800 (PST)
Received-SPF: pass (google.com: domain of guenterk@gmx.net designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-567-HdtuhKW3Oqid9rSutj9kPQ-1; Wed,
 04 Dec 2024 04:28:51 -0500
X-MC-Unique: HdtuhKW3Oqid9rSutj9kPQ-1
X-Mimecast-MFC-AGG-ID: HdtuhKW3Oqid9rSutj9kPQ
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DF8D31955EB3
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 09:28:50 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DA33C3000199; Wed,  4 Dec 2024 09:28:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D80703000197
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 09:28:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5606E1955F3F
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 09:28:50 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-127-3hMymTysO1mpYdW9JYsN1A-1; Wed,
 04 Dec 2024 04:28:47 -0500
X-MC-Unique: 3hMymTysO1mpYdW9JYsN1A-1
X-Mimecast-MFC-AGG-ID: 3hMymTysO1mpYdW9JYsN1A
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.175] ([79.231.8.239]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MCsPy-1tRbIO1rM0-0019Zs for
 <blinux-list@redhat.com>; Wed, 04 Dec 2024 10:23:44 +0100
Message-ID: <3077d096-e476-497a-954d-09736039ddb1@gmx.net>
Date: Wed, 4 Dec 2024 10:23:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Might 1 of You Please Remember?
To: blinux-list@redhat.com
References: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com>
From: "'guenter' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com>
X-Provags-ID: V03:K1:k/BvxssYeE0mqS/cUVGnfGwa0Lks+BSQiFVh+26Hk0tvQ9em4XS
 x1nO9a+KqVRXWvRoeNmTOF1k8IMIaEf8lRKagHf9g60E3C1Ol+76AtsAcNCznKtm5ZsnyXm
 qfDQByzZHT7NnWLXu22pLuGqaAz5ob4Ffz70CWQ8yjvcKRLPaDFdrJGTEFLjPVbh9K4xRZ3
 TNA67ERbn6E0x54jkGRzg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:8PnVjXETEAA=;VUXwWob/CqKWwPnEUvVHuc2nBNb
 AYe/uA5kRQaeV+9qWHq4jJ7wC2RM9TuHlfG8N1j3JMwy0ANhMbUoO96ohlJm9clKQUvyyanpB
 GkzVa2pfPYR4j0YiLTy5ofl7iWYhytIYA+Go6w880wkZ4yES73SqvhifBBRfVPto4AMyjH5+H
 4zxcLq3J1uoQoWXuUXKvAPFoXRy6/XKdTafZtfgtm1pB3wc7oDwZwRw3eHyw7zvjXCkSvRnxM
 bF4XTyQk/d637WhkHCo71SPam0s7k6jGzfs5VDffljmSvQ8qPGQmTnDizBWqlEyoUSUHAOPl+
 UzLAiK9HEnRGX//hI1J9Rnr87V2tj0U5Z1HUbJS+biK5OuUWXUJPfzR8Q8cIObSLWg/y6duP2
 +m2R43sFPVXAs1hH+gR535akLwqi0cF255cgwGiuAiCHsnyOxn87o3DDarwS7dAGmFsCta5N/
 MaijuBcnA0MI4rWQtO6ATXMdB0yIeX/BEjWWYWYkxltPOfvnSFw9LDf1zWjfMNyoXSjzvoA6I
 J/sazP4vSsfWNNtalDYYjsyajxsTUr8CCCcBAwWOC+c+wpdjlWcw98ukfMSdw9+tsm6sHybod
 UqjLpALxVYBdX1nBt8LtOMwnkfnmGBPpzyRW4CPDaAW6XxVpfXEeGvEetzzya7R7WdLvR/5K/
 nbP2ZpU3mY0rOK2dtX4xSu9mpwoV8/hKkRCLklWFzn+9mO6KoWcAH/X5MaatuRwa3RdfntSBU
 GkzAMag44sUo85VoPzou8gK6Qchwow8wMa5V8txMEjzFZ6tjZqNVWXIEfKxQf30K1rpKqEAqU
 ZXF2AfzPQRNIWbFfipm7tR6F0HSQVLsk19wSs5hggARymrCQXufclBGsWQfZiWBuRnjLKuceV
 3un+BgyMb5JcMqxr5AQk/G73nB95WjTK2yJ7p32E4kdr2bALCyJ6lHeaLGTqj01E+ctB8BW8l
 Eo50URe6ffR0ls1CPMewK0e9ELSIukDJogA/FAWKLuxcTCN04oR4e8kxsaAm5Xv0bvSN0mfmt
 xykLgyctDiVnVt/ZJcL+8j5eO0oQ8mWGibaoEpxUBfWRsdnwZXutssUWXBesOMGSMrMPlzumK
 rTvSYlY8OBbYiwu75AXgjONU2ODhkc
X-Mimecast-MFC-PROC-ID: pfw8Ps8Nf2riHugzHBON00xM55KmNOWR4RKuH5VDUlI_1733304526
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: QeETYYNNWNguVA6wgnCExeH0fiRh5jW0seLabGSFewU_1733304531
X-Mimecast-Originator: gmx.net
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: guenterk@gmx.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guenterk@gmx.net designates 212.227.15.19 as permitted sender) smtp.mailfrom=guenterk@gmx.net
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
looking up github for topic trashcan i get 38 results.

https://github.com/topics/trashcan

The second most stared would be trashy. But bave a look for your own.

hth,
guenter

--
.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

