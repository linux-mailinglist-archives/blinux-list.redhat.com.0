Return-Path: <blinux-list+bncBDAPZGHUUMBRBK6M2G5AMGQEVP5VARY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id E99AA9E805E
	for <lists+blinux-list@lfdr.de>; Sat,  7 Dec 2024 16:13:49 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4668a95e56dsf39909251cf.1
        for <lists+blinux-list@lfdr.de>; Sat, 07 Dec 2024 07:13:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733584429; cv=pass;
        d=google.com; s=arc-20240605;
        b=JABQ97xLIpw8jZWxFw2UsnKCcsmcJ3wU1WjUdYH5u/RoikcwGq0Qo7Ugy9yB1z7NNW
         qGAHpyQbjEu1yANoljclrWRqu1VIkMBDFyoOLsoq0ARdG5LAScrkFAm5dpc3iVZ03Zm5
         NOPPIGTr9UBYsffs1RjUbGRolPB5DZp6sAg3f8W0G7EghhS1lMhpZA6RclVTRo5V5uiK
         Qm/LJ1mhGG1at4pfaj6Glr8R9NLZ1ZOiLGesqD3xD2nPVFBki2ggbv1J4JBLLfXJf7Hu
         8IWM3mqv1AJoLJWnralUnyABWzQ5DYbuo6GiOMGBc897r1lumDLHg227hlRC67RoptnB
         se+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=E5U/Y50WJmwcJxzJ6zNvQuoL9fUhikdOm7UdHArewm4=;
        fh=z820dewjuuXdz9JfS/ibpJwvFoDVyG56XTOxyLvDAdk=;
        b=EsyBSywIc+eQSNI6PrHDM1EmWP0SAm+Sf+6/KCQOj/K5ypRfL8vVbKiIU9DHd0W79E
         kZXBEcSH8rysGmsBz2jKDgOVWhsoi1N2rY54IywGnj9Ju1zU6DwNYRw8D0V5Vekv26Fd
         eBRJx80eDLG7npSUuOpVvNU0Vff6jMbM0BzrvPjji8RY1/ekDClzP4GohHlYYD+h3F9q
         9CYJaZUXOHhJB4XgkPgxRETgNhuIAdkaVsdCBNEPH3uyUyI3YDhigZCmXBBUgbqpmIM+
         ipOYuNhcAsBtaa33TldjiC/YLlvMo9Zlsx0cTVSBVoIUS/xpATyVsIsYDxhpEcfEO8fE
         fShg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.41 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733584429; x=1734189229;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5U/Y50WJmwcJxzJ6zNvQuoL9fUhikdOm7UdHArewm4=;
        b=cI3n1TF6/MQvx2kc9rYpgfDIHyCCIoH8kugr8GryX5bbinR7K+OVoJSksL/dQQiRrD
         H4gsex707kSiFqwIbtH27FIof3dlgVPWja89pND75MU5SD8ypNx/whFjYSmfKVm2MaTR
         oL4GWZcC8Nyd5xtb9wfk/+7HGdKaIf7gWvkOVVkM3MTmhKOGcW9h2vRxf89Z5cDKl8fT
         m1+Ab3O2DJ9K/iqfMozgB2uq5ZyoLS3zCn1LFxBnlczFtRIKBDQdSRInZFovje8V7Pe6
         eJ+H+X96SNa/PgRNJjmnqbRSjrQZa5DhRHYR+8oMEnE/n1m88cfyOBkC5dNT97McwY2m
         LaZQ==
X-Forwarded-Encrypted: i=2; AJvYcCU5q0jHzLfa8yc9c7nfPX5nNUBCx3Zw6KUGdq7XfrgN3u0Q501AyWvAaLHYfOwGCK6vCQm/Xg==@lfdr.de
X-Gm-Message-State: AOJu0YyiZZJAfHbGbP8ZbX/yhuU6qG5cVLu8V9nhioc/gsKudLNhHqjB
	8f5crjT0rVbs/hTNSw6cNpfdULqe5LH4kCzp8pJCxWHz4W+KOAxaio31xVozCyM=
X-Google-Smtp-Source: AGHT+IHjQa11uq6LYQ4ilpxH/VIhySbAhNXg8e7lzHb9lZ6eVt+s+n+Hc9jlXesM2wMIJ1nW9YLizw==
X-Received: by 2002:ac8:584c:0:b0:460:aa51:840a with SMTP id d75a77b69052e-46734f94c72mr93234151cf.45.1733584428412;
        Sat, 07 Dec 2024 07:13:48 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2ca:b0:466:8f66:abeb with SMTP id
 d75a77b69052e-46727cc7555ls40944511cf.1.-pod-prod-09-us; Sat, 07 Dec 2024
 07:13:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUyAZIbG9zrmHY1S0/YUVSW+0o7oVdqZ4RisJ5T3CgsGWfGYy5kLLZJ6MUgREwz704woCt4aSVppdeHmA==@gapps.redhat.com
X-Received: by 2002:a05:622a:1f1b:b0:467:5711:bdb8 with SMTP id d75a77b69052e-4675711d479mr11221591cf.46.1733584427280;
        Sat, 07 Dec 2024 07:13:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733584427; cv=none;
        d=google.com; s=arc-20240605;
        b=Dzl1OvSg3XKkiaIuOm+7zcnWrzsfkyZ/R3IfUfWcs7w+Qe69nXnOBnnqYjtEPg+i0V
         6FSq3m6qFstfics0RbGSDaZN5bjR2z9wrqA4vbN2QGIqtASV+z31qEEJKfbITSv2VZWm
         hbYcnJzp5ZXWAYpL/agafXEAnzN8UsKwOQbRxL3wxNCPMrYbKFCymoC8vHdRvZpmYblF
         2YChUE8qtXwvB7/NH9rWHI2gEzrZZGnoM18fkgJOUW9e7t+Hk520lJrwDjIFEQ+ukyRb
         c0rHrDKtYFtbFV2rjv+pIjhhfuo+HdonTHkokQ6BuiMZ+reJExouowdoY5nMucAP5WXf
         F4jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=k1aI9v8iy+fnf1RWPvCeUVgXNn+fQCNNI3t4R8Xs8PQ=;
        fh=56KUWa/QibqH6dRTOZkIsnXncm+Z56MEqkihJqCC3fc=;
        b=PGEnrn6a20BH8NpioRLTZJQHFOYfQl2mnvnVNMS5VGKkg2TdrCO7M4pmr3Qv5p8FAL
         BXkE3PrFKmrl3/2xyNwkg3cjZwpu7pcUGLJawTVberSBdDXnZDsl+sQw6VV3Rjsc+8rC
         JXpmXUGfn+OrFkqlE8p22ZpoCyPR5wqMEef8gTJVXlfcM46EWSJrPG1eOTwzh95vne/8
         /+5cGQ+iAzC8JWScXIA9TMeY0gG/8CqYky9cuzdGk0Noj2gzvSxOcWT8VDbCRS0ft5+/
         iXbr1lO96zrYCAGAGbhHO70qMrvsmLmLUpFVGYR3rSiZawPB1oEK8KMqMflYVCZhQfO+
         3vDw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.41 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-467297b8e40si71177871cf.233.2024.12.07.07.13.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Dec 2024 07:13:47 -0800 (PST)
Received-SPF: pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.41 as permitted sender) client-ip=209.85.167.41;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-168-2ACirXIANvO35nKtQhg1UQ-1; Sat,
 07 Dec 2024 10:13:43 -0500
X-MC-Unique: 2ACirXIANvO35nKtQhg1UQ-1
X-Mimecast-MFC-AGG-ID: 2ACirXIANvO35nKtQhg1UQ
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D05E8195609F
	for <blinux-list@gapps.redhat.com>; Sat,  7 Dec 2024 15:13:42 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CA7FA1955F3F; Sat,  7 Dec 2024 15:13:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C7CFD1955F3E
	for <blinux-list@redhat.com>; Sat,  7 Dec 2024 15:13:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3F307195609F
	for <blinux-list@redhat.com>; Sat,  7 Dec 2024 15:13:42 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-615-9x1Ekv0QMqOzl4n4T8NdWw-1; Sat, 07 Dec 2024 10:13:39 -0500
X-MC-Unique: 9x1Ekv0QMqOzl4n4T8NdWw-1
X-Mimecast-MFC-AGG-ID: 9x1Ekv0QMqOzl4n4T8NdWw
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so3497426e87.1
        for <blinux-list@redhat.com>; Sat, 07 Dec 2024 07:13:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUenIzW4VIo3pAtGMXS3CFF9/qimJ9cYyLZ/sN2uXk2svGXNzPQKJ0ztq6WSgSTw7ungz1UKNe6xgv6Wg==@redhat.com
X-Gm-Gg: ASbGncvoa9GipvcJvwRgIaceoppw5Uz8IKd1u0TrgOPmDi1Vv5T6w3pO4BDs0F5H89/
	kaGvtsNHzD1DipR1cyc2Juey9/AVz5g4gWX0LD3RxUR0FJPPfVKBHvt0ye3e+AIWp+7OKwSOElQ
	R0+ayS/vWrxsCVfuypCpbmDGAhVDQ/cWupFo7+Yjy4moJH4L6F1QoprR3DVfLYATtl/NDfvp7qq
	VrZMsyK6DHneTYhIQbOsJu1Wg+Z41MT9ktVLiJCHPQnRw4d4bKLWvsJ6PqlYhOxENvtYh2PMy7v
	5R2mS11nFUkuqssLzAqCEQYHRtEDUkae
X-Received: by 2002:a05:6512:1594:b0:53e:284a:70e9 with SMTP id 2adb3069b0e04-53e2c2f0085mr3444441e87.57.1733584417249;
        Sat, 07 Dec 2024 07:13:37 -0800 (PST)
Received: from [192.168.0.29] (broadband-46-242-11-88.ip.moscow.rt.ru. [46.242.11.88])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e36524e73sm404052e87.203.2024.12.07.07.13.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Dec 2024 07:13:36 -0800 (PST)
Message-ID: <aee96de1-5287-4699-bb5d-09653a2a8044@gmail.com>
Date: Sat, 7 Dec 2024 18:13:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [orca] Re: Sorry for offtopic, response to the blinux
 registration list not working
To: orca@freelists.org,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <876361b2-68e7-44e1-ad8c-d2a3a838f854@harrastenurkka.fi>
 <a4765a7a-e546-088c-7f43-7c2038dbe283@hubert-humphrey.com>
 <039001db481b$0ea43140$2bec93c0$@gmail.com>
 <4c3ac83d-ad20-4413-a57d-a23874518efc@slint.fr>
 <02f144af-7577-e873-34b6-a8bafe5e2915@hubert-humphrey.com>
 <d17761b0-8c45-4356-8a19-f4585633c827@slint.fr>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
In-Reply-To: <d17761b0-8c45-4356-8a19-f4585633c827@slint.fr>
X-Mimecast-MFC-PROC-ID: -Ey7BDiMzjFk1YFjVTeObNAvFX7YE6x2n_ZVXgek1uc_1733584418
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: eokzUISqJ3sIpFGTGEPL3N-S082bhVRjiaGW5qpximE_1733584422
X-Mimecast-Originator: gmail.com
Content-Language: ru
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: aarnaarn2@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of aarnaarn2@gmail.com designates 209.85.167.41 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
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

Hello. I think I could create and administer sutch list.



07.12.2024 0:36, Didier Spaier (didier) =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> Thanks Chime,
>
> unfortunately this information is rather old, thus many of the links it p=
rovides
> are dead.
>
> Unfortunately the blinux list is only partially usable and provides not r=
ecent
> archives. Fortunately the is one here instead:
> https://www.spinics.net/lists/blinux/
>
> I think it's about time to cease to use the blinux list that seem to be
> under-managed if not no more managed and replace it by one that could be =
hosted
> @ freelists.org as is the orca mailing list, which is free with good reco=
rds.
>
> @All, what do you think?
>
> Is there a volunteer to register then maintain a list like blinux@freelis=
ts.org
> replacing blinux-list@redhat.com?
>
> If no one volunteer to do that within a week or so I could do it, unless =
someone
> objects or have another proposal.
>
> Cheers,
> Didier
>
>
> On 06/12/2024 22:09, Chime Hart wrote:
>> Well, Chris-and-Didier, I am glad I save as much as I did. In my Lynx bo=
okmark
>> file, I have the following which has several mailing lists-and-an ftp ar=
chive,
>> which I haven't tried lately
>> http://leb.net/blinux/
>> Maybe an ftp index will provide dates to imply if any will still work. B=
est of luck
>> Chime
> _______________________________________________
> Orca mailing list
> orca@freelists.org
> https://www.freelists.org/list/orca
> General information: https://orca.gnome.org
> Orca documentation (English): https://gnome.pages.gitlab.gnome.org/orca/h=
elp/
> Orca documentation (translations): https://gnome.pages.gitlab.gnome.org/o=
rca/

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

