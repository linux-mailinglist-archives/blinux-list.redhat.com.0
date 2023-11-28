Return-Path: <blinux-list+bncBCW5NIVR6ABBBTOKTCVQMGQENUBPA7A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDFD7FC05A
	for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 18:37:19 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-67a6277eab6sf5892826d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 09:37:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701193038; cv=pass;
        d=google.com; s=arc-20160816;
        b=ofJELiYMo3gCLHp32QAB/xVUIATf7OJLxDOV+D+SZXbMW3T3EFYq+rua3YGI8Bo8W7
         SvlsWI9GedjPk/YIfD9RazWeNPWIZxLNJiGGtBi+82TOjM7YKvD6Tvl8OfwmxC2hzBn2
         5MmcCz7oa0uLK3MJDQhTUKOctu2XZIqsfnSLTurxaLEPLqnqv+FdG6IaxaQA7ejNJB7/
         HURIBHbKRBbE3L9mRbSRDKIVBaKLsB1ph1RL+9Y6FIsV8zQ/Lly9QEI25hIEWymi1tkF
         7ySqDbPgYv13qz1YkpPLl/Rh8l7MWxPfty7y2BX6jauHnUV6ihkBf5cCDyjQfHc7GYDt
         U+7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=dyAjplYMgF9YHDPSxX6B3UOsKDgHWEmZXBL2j27KJhE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=n4VWz4idps8RmnyEbDXErh1+M61a385ihO5KTaBh2pz1d0xNUYprPkRAxD/ibjw5iW
         /UMDJ5tqBoNxaZLt2m+UcRHidYUC05BI1nFJ+Ll8txKY4o36KGrqlXDg6NHFgQj6G7fp
         6iL3ffwjGdvA7Bi/yw40N7/j5y4gHaVkJISBnU+v5LIcCuautOG4I9Qs9+Rb/ZSQbKZF
         UcsrDGUDqFgEcLhusCSmJIyfX036NPzr9B7uZ/QSsf8q5vAR5wr1YcGkFw1IxQBXIY6Q
         7Le2b0WdEoq1tGnb11cchFZn1/34roG9/lzsVHsqOjmts+xHLs8jRn8pPnmenz8CoAQp
         mu2g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701193038; x=1701797838;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dyAjplYMgF9YHDPSxX6B3UOsKDgHWEmZXBL2j27KJhE=;
        b=RVOw9r9kErpnBlR/VCqstcLa/loAi/+doGEiDJy7dfHAZGsLKZm+v8UGvOOL1FpREP
         7FfOLIVjP/T6Jvls8miH50aUp3PHEA0FPYBBMIGuxaKPmN7RQGh46bJBNb0PuFS1pW6E
         hRw9SikBC2w/OklHjJh0aAwn1BN6XqOQG2HaSOee04Udxw/qg2y7kFrwPeze02cchupZ
         MrM5jgS6/3VDJXr25ud2MlvWerThHcurUdwEipUy+QUmwj/E+Dz+glVmQUw1jt6V15LF
         0yK3IJxEfjczGvnlaBO/VpAWWevhWL3+TMF0xSCjWAUp3PSEjZi4k59SjRLKmZHyPlV0
         RQEQ==
X-Gm-Message-State: AOJu0YwOO+dPAH4gSmm2uJTKTu7EgEwC7buizLe0qpw1QxXWEdlHrTEP
	gvP158QFRofr4pZ0XCh/FJyfLA==
X-Google-Smtp-Source: AGHT+IGsws5INozHfI+JjBNhbGpHlUPhiAwDHTI1sVjiGXvB4n53KdfbIB5Q5Kvo/jWIQZS93KzR4w==
X-Received: by 2002:a05:6214:b8f:b0:67a:261b:ef95 with SMTP id fe15-20020a0562140b8f00b0067a261bef95mr11166316qvb.13.1701193037852;
        Tue, 28 Nov 2023 09:37:17 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:f850:0:b0:67a:1a58:78fc with SMTP id g16-20020a0cf850000000b0067a1a5878fcls4151629qvo.1.-pod-prod-07-us;
 Tue, 28 Nov 2023 09:37:17 -0800 (PST)
X-Received: by 2002:ad4:5499:0:b0:67a:2575:a18b with SMTP id pv25-20020ad45499000000b0067a2575a18bmr12598824qvb.15.1701193037110;
        Tue, 28 Nov 2023 09:37:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701193037; cv=none;
        d=google.com; s=arc-20160816;
        b=Li5VurEuMAzn5/0Eqy4MNSCWf3NvVluPnWib5tWK061WJyUJVvo9+LtfYF0wputDw7
         pzj3/jM6BiBwibGBxsVZvcJAww5TxDJKQARto7hIoyRtwd/LfD0u5ubZ2kykZBqASRIh
         IiFcLIY3eSrCeonoYAfGXTTC5CubKNnac5AE2DyIg10y06oL7npJm82zw7+qAbqZbnGQ
         zH+iFO7mJHpQjWQDh3KtHVXaigU/BiJV1o+POu7QUhcdYl7LBkDWAmG2q0OgMTwlBPHm
         OgQE9uvpoKkoFJtBXVje604mChK2vegfu7/pj6ufM4IwomTjmBmjQWTxKYAxxedUdXEW
         0Urg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=ccTYrOq0/Il/KCviYcZpdaBmiqf/4Pa1JjBCKE2DMR8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=uXqI7wSrqk7gCasbrAxFMMQ4FMnusXHEU84sZIYWKcSCmEDMZ0tkS9gOlHcnRDfMBX
         58ALdR/3QHTmKSvLcEi0V9bjE4XbeBTbnYIaj2sI6EPmVwQ/vY9g8xnm5q0EvlX4AvkB
         3uDfWvOrlb+UZGDoD7oB2VePURQnOSpUp5Fqlfvl5M6ZkCvMNlYGmMGt5TyJpE+fqDZ/
         GeiEIiC3uOcFbVKbHJjm9Sjp65aQ82NN49foymdQgQwzTAs4lVo7utEAsbz69svfa8Vs
         Vzp/Pg6X45+FYknCJF0dFXb4FuwtC9RPxSvjlS/ZMgsj2UtHAcFW/xJbUTe0yS+dYsOT
         DG5Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id j6-20020a05621419c600b0067a395ef2d3si6327047qvc.70.2023.11.28.09.37.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 09:37:17 -0800 (PST)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.128.48 as permitted sender) client-ip=209.85.128.48;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-448-e4EKbdOoNy2q8m26LYwp9w-1; Tue, 28 Nov 2023 12:37:15 -0500
X-MC-Unique: e4EKbdOoNy2q8m26LYwp9w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24236835266
	for <blinux-list@gapps.redhat.com>; Tue, 28 Nov 2023 17:37:15 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2100F20268DA; Tue, 28 Nov 2023 17:37:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18F9C20268D8
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 17:37:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC72F828CE9
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 17:37:14 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-509-fggA9N4dOAaGbDt21GVFkQ-1; Tue, 28 Nov 2023 12:37:12 -0500
X-MC-Unique: fggA9N4dOAaGbDt21GVFkQ-1
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40b474c925bso15290755e9.3
        for <blinux-list@redhat.com>; Tue, 28 Nov 2023 09:37:12 -0800 (PST)
X-Received: by 2002:a05:600c:5118:b0:40b:32fa:d8a3 with SMTP id o24-20020a05600c511800b0040b32fad8a3mr11596392wms.18.1701193030607;
        Tue, 28 Nov 2023 09:37:10 -0800 (PST)
Received: from [192.168.1.8] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c1c0900b0040b3515cdf8sm18500335wms.7.2023.11.28.09.37.09
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Nov 2023 09:37:10 -0800 (PST)
Message-ID: <9a9cda3c-635c-421a-a854-d36f22a7ef36@gmail.com>
Date: Tue, 28 Nov 2023 18:37:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Some gnome-boxes user here?
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: cs
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.128.48 as permitted
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

I am playing with Gnome Boxes. I successfully installed Gnome-Os nightly 
and all works fine, but I don't understand the procedure going to the 
virtual machine and leaving it.

Shortcuts are:

ctrl L alt L keyboard input to virtual machine and from virtual machine, 
so I think when I press ctrl plus L, I get to the machine and alt plus 
l, I will leave it, but this procedure is not working, so I use left 
orca's left click to get to the virtual machine, but after that, I am 
unable to leave it. So what I'm doing wrong?

Thanks,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

