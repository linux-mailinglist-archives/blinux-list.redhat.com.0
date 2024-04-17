Return-Path: <blinux-list+bncBD6J3OOK2IIBBDOU7WYAMGQEIQD4THA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C8C8A7C3F
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 08:19:59 +0200 (CEST)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5a796dc1461sf5558056eaf.3
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 23:19:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713334798; cv=pass;
        d=google.com; s=arc-20160816;
        b=fEWJDxazZh/KGoij8zatB6hTdbDYV/n7ESAs56yMLQi3SC6jFyY1E0JRt3xrmC93kx
         iIhcnKUxidzQdneAXaWnWTL/EVXN7FqT3U9QpwZ2W2THgifGL6h3W9LT9wqzSFQDBkAU
         MmmdAJUHILWvdqNtFV0v5AHuC6GN1ofVQIrJEb2E6qneR+CzabAC5AAAzxHAxZkjhaB+
         xt/UYi9Uu+yvb1TgwBU62cKnAAVZ75u82odNX0V7XNKsHWMTvtKFTghMtcdXH+lqJRFf
         EcxxFao2v60+eToslvPf2XQbWYhYTgMEi+LMs2rN238han0iEVZIHu4z8OVw0W3o70nl
         2JiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=Sq35vsPWSTuqHb4CAbmvvCvhIpvu2zUA6XrpahOUL/Y=;
        fh=ODIxbGiti8ZSmtDxnnbi7pv1VTHhaGhDwPZ/4+ZiyHs=;
        b=IdTgwswQiMOobWJweeA7RHnUyAW6Tl1SL8x4JV/h6DddlA9cBKu8LdIVsBN6JAx1mM
         BKG24p6jmY2GY42mq2BbuyIDGqaQ2EUH4Bzg8vdTheVLBJyT9LuwP5YORN7bsUjYIyTI
         rY3eM23XDSgPAheVwqDaPPh9DNWIxKaO7v/OyZMITksVKSPZtpwyKBEDt0xQ8V4Q8tUW
         1dYKg3DXu1ccYv6U1E5pzuycd2Zavo5WN4rmz2cn0Z2Kzy/ZQwmZtJgIOBOLbOvlGSzC
         tsMvbKYmkPv/vruXCnEvNfbi+P6PnivIvdk3Qt+LNR2t9wQHJBEXLpwgfeppeXsTEr5I
         hmWA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.18 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713334798; x=1713939598;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sq35vsPWSTuqHb4CAbmvvCvhIpvu2zUA6XrpahOUL/Y=;
        b=rOAqJ5ekwFcLUYBYBu1aXnUJj7V6vO3Ie5GfGBo2a+2CZO7Xcq9rIwh2HseP/NQWet
         IdY0we/zJDXUedTSO3X9mU1UFEvFudsU8OCT3DHtjUt3iSeYrNQ7rcQu1PALRMklZpLS
         nh+zRapLe5zJBd/dQbTH45oyFymheqiT4i1m5KzCQlaEtaIvR358bqTIYwnzOFFsutsn
         LCM7A4Y93QTK1MJFzZngK2D7j9WHQqubUVCalyDeqZ3yXNuUk3D1tYhtkKLz8aEqykaz
         809B7DE6KOgvcBXZMon5+bw1aw+EUaol5vohCzDNt5hN8VDAW24Y7+uX7WQi9TeQzP3M
         oc1g==
X-Forwarded-Encrypted: i=2; AJvYcCW0cQ4Gnirb9Wey2BYapy6UrJJ1G24aobPojIBxx7DuhB6iIjULxfBrbJvKNmN1eQuHtTrTCghXwUtuMug0UPwe3Gf8O9wuomE4
X-Gm-Message-State: AOJu0YzES3/VGny7gttC6Lgctc6C+8+QbNjekeWjrxCWZvbKNQnk9Ais
	APHB+/Ha2Q2U0yXO+6jtP0FxW8nR7tNvNYf2nAIUefWPvxO3hHsoQDvxPaxFpLE=
X-Google-Smtp-Source: AGHT+IEDUORu+bdTqD1VPoEYV0iGdKJ41kZBLYW0ePefXYy0oy5ZTAXTJ5ZMAAiW8HFUNXSgg1g79w==
X-Received: by 2002:a05:6358:6996:b0:183:cd9a:b2dd with SMTP id a22-20020a056358699600b00183cd9ab2ddmr16282808rwi.23.1713334797788;
        Tue, 16 Apr 2024 23:19:57 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:6f12:b0:436:89ac:5a4a with SMTP id
 iv18-20020a05622a6f1200b0043689ac5a4als3997126qtb.2.-pod-prod-07-us; Tue, 16
 Apr 2024 23:19:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVCOA5Ege/6g5w8P4uWBjbRgoyUuh9pKDC/ZvzfBYkFECS51vihSGda6MPMiU+e7QeN/NtcCLpV20RuC2xZBNptnHED5vyOamVyhYEl
X-Received: by 2002:a05:620a:15b7:b0:78e:c312:4cc4 with SMTP id f23-20020a05620a15b700b0078ec3124cc4mr15383357qkk.73.1713334797084;
        Tue, 16 Apr 2024 23:19:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713334797; cv=none;
        d=google.com; s=arc-20160816;
        b=sciDmsVSS+Y3GEkjOQcrxRv30PRJ6+V0dSROZvSIo5Lml3UzwHfs3uyLSGm3JKf1PE
         4Cz/YrHQQ8UHco+UlqjqrGQTPFMLLp2yiqKCzkvQitJ29exBelGB354qeNRdget9C9Tm
         K9ernMSseEjuoYvYGkFg0JV0aIdANxGQHAUD7bUwqGKD391NFa6PNvhbksfLGxopgkBL
         XXTGb2G/LG27OsVN8Y4cTBc4Q5V9yRi0YTsSN9vwNgMPvnf+rmGahZE0Xms1N6ayhzci
         hfWUsh4nmmKEduQ5xiUVl5deWyPn5nTbLLhrGUGDo0TxcsiIU+s9WI8JPtBBLgX4/4i5
         EGog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=mRi3C/sFrEyEswGAg0QVZrHc1mIBhHoB1MIFxOgcQ9Q=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=gyYkHsaoQ9HbSwGmP0+y7WnjhbsvSF1pQpplI+ShxibEDbItYMFk2tTQwhm7WPeT/Q
         MDbWQWiB6VoFLX8V6x0aU+FZGCQsQPnFBWgMzmVYIYx7k+va2Yf2RgUDxXJRTWXSDuoD
         QutTUnxnKjeJFq7KA0A12kcb/S+SiB7yH76EkErTSmWg52Mq8IhhHl7S+4d5me/FfLVH
         MkIYhuuAL6oABYrWmsIEm+aIOOcAnyWdbQIuTYnz/qZrkoZd9csHXE3BoF1daTYV+wCb
         kWOhy89s7iDqG0w9CR2mqpv2wGbqY1qOxrhpxYEirdUfvtb9dUGkTikiCHrZrvP+Ck2e
         MbDw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.18 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id vv7-20020a05620a562700b0078ec559475esi13178600qkn.750.2024.04.16.23.19.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 23:19:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-15-KOG6oouyNRu9kqqypKnATQ-1; Wed, 17 Apr 2024 02:19:55 -0400
X-MC-Unique: KOG6oouyNRu9kqqypKnATQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BD928007BA
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 06:19:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 78CA32026964; Wed, 17 Apr 2024 06:19:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 404BC2026D1F
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 06:19:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E32AF800219
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 06:19:54 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-662-yWZh9R4NOIi2j5qNXK0RKQ-1; Wed,
 17 Apr 2024 02:19:52 -0400
X-MC-Unique: yWZh9R4NOIi2j5qNXK0RKQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N3KPg-1sw3Yi43KU-010Jv6 for
 <blinux-list@redhat.com>; Wed, 17 Apr 2024 08:19:51 +0200
Message-ID: <20240417.062035.176.13@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: re: change timezone
Date: Wed, 17 Apr 2024 01:20:35 -0500
MIME-Version: 1.0
In-Reply-To: <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
References: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com>
	<779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com>
	<66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:fESrEFQv2ClR6gMEeCsav2vF9o4xZrK+ptZIt6CXIdSZO5h7SIG
 TM8W7j/mKw8OLRZIOOIpqFO97naeqw6azL0y68annBQpz6jLrb2uuNvzpOB0jvCxfBb0Tmt
 Gt2ideBeok2/4e5kac4RZMSD1bDe7NL2p+M6SFtSACAkLSM5oVO/aRvWd0RXtRaYWyKJztw
 Oo2zSNKAspDucj5s4mMCw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:aa9Lf3GmK5I=;07vnh8VYUrPXUwnWJf3SWyUXeUx
 x46iaWIqaKnINPSkQz8tOQ/YZq6I2YFtprD7rWowF1RaCveI7puliKGmI79Xn7se68OKgm8Px
 teQNbU3cBJydb47bkqMDSFEjgnq+SNh8HHPqeQxLftPMRloGGcdk1js09PNR96k99f297ZsAA
 Zwpjokg3hBsWsV1qQj/gOvZefAdIbP7HYffeE9wV2bIPWzm+LrXadnqOwZyV38084c8NaPBi3
 n+YB1u1Qzqg90OpqtzUxAOw2hKjOiTVsumVpnxqRqi4YolstHVmkdnPOWmLAWG8iHIfTvsw/Z
 iKJ8jt94y2oMJ538V9f80lwBC/r0XTspOET/DvYXA9ld6iSPu0dLwWGgpScfz7EDEqFQgT668
 /YOexMRKbwpLG3NFEI1bcdMIWxhfARyJ1W61PdHG0BMcdT1wvkfpMWwWzCKgok8vYoVm0JGvY
 4jsyXi93tCL+UQbHlRnvV6ut7UoQRJqw5g85ebevb2br8yPnhwUxnpRdzWZTRjSmrkP6gOCJ2
 CQiasmcq05BkVfCyr9Rtg3OPS4HevAH2Rkwg7YqbC3FWS2Y/B4SXuyH7nsh40EyNr6Jc5XG8O
 SsyrTBVrXIHMX5a5MBjuTco9fYaEL7jHgx6mwjNHEaBs5Uvp1it9GdWFdASy+H6EUl8+npnGm
 ohyNzWJNmpKuGOE/hXLiPecmveHA3RONeQJrF/FBHf8BmXcYTOq/WTmddGAydjTsT3BmqU+FD
 /kcuVaW1fmKQYXZ7kheNbh7u0+q0NwR4HMWVrYzT1CYfNZXLLhygzwhDBmf7L4pB8Z2ShKiLp
 g+EeiKuj9TosP+FnVlf2eAiDZtKXbrm+wKZckF/nyYx4I=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.18 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

Have you tried

systemctl enable systemd-timesyncd

----- Original Message -----
From: Chime Hart <chime@hubert-humphrey.com>
To: Jude DaShiell <jdashiel@panix.com>
Cc: blinux-list@redhat.com
Date: Tue, 16 Apr 2024 21:45:10 -0700 (PDT)
Subject: re: change timezone

> You know, many of our mobil phones ajust time-zones as we travel, but this
> laptop never ajusts.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

