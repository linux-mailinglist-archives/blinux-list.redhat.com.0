Return-Path: <blinux-list+bncBCV3N6GOXMCRBNWFWSYQMGQEEYSFIUI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D218B470E
	for <lists+blinux-list@lfdr.de>; Sat, 27 Apr 2024 18:07:20 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5aa33fd1935sf5245012eaf.2
        for <lists+blinux-list@lfdr.de>; Sat, 27 Apr 2024 09:07:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714234039; cv=pass;
        d=google.com; s=arc-20160816;
        b=MT4FGNpn5QZpl9ZBoY62bZgqHlSYZOlPWjqTzscZ+MzifyN1zy9i9dol6OD/U3foqr
         70VD2kT2SEjJHw0HWxjxfZpfCFEn+VDtu8I9BGMKrT5eg++86cCw6HovdtZskRJ2o3rP
         1c5M13Zu4Mv49kjfy6vh4A114X5xZQsZB773/CMHqxvDZaOC1xvh+/PN2wPfhwWxufKK
         3TVcj3wMKVdhpBIPEs0llsvqvjVttxBZrkVWTUe84To9qCmHrnYX+XJ/Q7Do88qZvDvI
         6oClMmZ+lK0DaMgUbGCTKrqo6A+5BJzmZlP0MMBdQt4nBCNpUQ+ickjFAEUaofrjzvmW
         LizA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=cVBtSXqzGHQgRQyTKA7XdBH+047LjdBeV2iaCKHppqk=;
        fh=gAbt2WUzKz8XNJZjT5IB7PcLUCWi7oWqcgIivSbRXSA=;
        b=WbH4CF6yRsJY66skBW+2YNrZqR8vbpml8v6MLmVLiWtYoCtmjyLegeuzU5THu4Vygb
         OQLPEQQbUezxwhFlN6hgRWcs/2yiyqlsKOc6Qb+qg0FQMi/cezzilF+1qQj0OPJfgkWs
         BtIeIMG148MR0hvftA2E1budiE1eny3hU3RzU3f2zenbLar2phaSRhuPhRp01vEXlS7L
         zSyASiX2rNpCx36NqRM13U7v2do/uBxZnoce1jngrRptaGz+1xOCMhQwEiJzqyc2vR0c
         FO2l8Oa+PIEo39vbFO5FcbjuxRz5welDX31yHwDBmp1zaiWjpSSVLB5yWL6aMrf7nDHZ
         5j7Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714234039; x=1714838839;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cVBtSXqzGHQgRQyTKA7XdBH+047LjdBeV2iaCKHppqk=;
        b=eHJhmruJxF9rB6FiIIPV0QUyZY49uO1fnUOFIvx1iwjgTROHpavfuS9j0f8KOvgzhn
         XpIXE73lt++pav2NbQugD4JCWC1+LUTJoSNOjl9TpNMvt8P6IRdP74w9ET4dXsc6MNX+
         /MiBfr39Bv6NLXzGuwqOKa9csuHrkoNZbxXguGhcErvMFEForuiBm5M+QOcNLTgx4wSa
         Rc4zlmkrHIHoq9e/hIOb32wlT8UiROYPS7ZETgeUTFHuS7KGYETX7QKVUEoe2ydG6D+s
         p+LsioQm/JXqM4pR9143D9OX6qTEqBI7FQpcqz6fg5NTJwIFppZigF6PuUkn7Fit67+I
         f7GA==
X-Forwarded-Encrypted: i=2; AJvYcCUzSB7yGBWTflhuGMrI6q6KuZjZOxrYO9P9Xarzu0dM0LnTLA4yE1IaEiOEPeur+z7z6oVRFo9zF18JWz9GtiMnyTQZJHpPxGGl
X-Gm-Message-State: AOJu0YxhwrVt79Iesm6IQc3mdPh2XOzDUx//VIlA/edzNhewCm69/G7K
	owRA0N/GveOu4xpcPI6OyH2KTicZ+e5Jz4l+u/9QFCJCW2ho6QnE9PFINKZI178=
X-Google-Smtp-Source: AGHT+IEv4JSWn0Kw0gKCTb/lHdNOVnsjL+O9J7a2eghETfLrj/RUG0PFIHpaP8jAw1M0Uu+ZPgOSXQ==
X-Received: by 2002:a4a:ae8d:0:b0:5a7:c78e:410e with SMTP id u13-20020a4aae8d000000b005a7c78e410emr6751696oon.2.1714234038979;
        Sat, 27 Apr 2024 09:07:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5b82:0:b0:5aa:6bfa:65cd with SMTP id 006d021491bc7-5af5d01aefbls1875719eaf.0.-pod-prod-07-us;
 Sat, 27 Apr 2024 09:07:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUrI/8wTKv+6+u64U7ghvHDhKoU2lUTnz9QvLsuPvldxJoB1FC5wuEgPsgT/yvj+bf5dCgZ7CnWF4decOgLHVBxZDnRAO8dD26rtqNq
X-Received: by 2002:a05:6808:1a90:b0:3c8:6237:4123 with SMTP id bm16-20020a0568081a9000b003c862374123mr1288346oib.27.1714234037949;
        Sat, 27 Apr 2024 09:07:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714234037; cv=none;
        d=google.com; s=arc-20160816;
        b=KcjKVTPNCmhdfvlK8zzQyuSlipkAESTFld+MsY/lrehGO4STFYC4l7h2YhEdm/Oie3
         HwuxQX0DVXu9LFbw7AZy6a50y72DMcymGMJuNQXiETxUp7DOm4bMNw1dTcNFVtCMtES2
         PDVR/mDJAFn752Ncbq2X3hITnkazTRQSlNzTYvtvKeTKTlX774PDsRziT531WZlzJm3l
         w78XoImCztFI1YfryM7zIPhwIJMgxu6EjCXiYJZVHaNd484HXKfgPbTaWvn7y+VnsoCX
         UZa6ThKS4IQkAB7ho8vmJr/e0ks3A+Ut7NiP4+gdmi8YZMozmH25OzlwnA0NdqxDaxMA
         hsDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=yrjCbiZu4OHTXBu74AZMhWpjYgzxI2BkG5QpveUF1JE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=U9NLS5kqAfZxrtJ5Kd1GJdcJEw5DpwO/uIj7C27mRiPU6xFUdPSE6fNrUbB8n/8oDs
         w9cy8sS2J8Ta/Na5/KeNq6wPebjYS1JM2Z2/5KHeB3T3WqPXk7kCaKXqBx82d+FF5h6/
         NeA3aht23vSFnB3VGX9vFYZuZYtY3DaxuZGD6+quWjKa5SaM4Nz8RUv6V0shjzDrvISF
         B8rEoQc8nkPkxVIHLzny7DvzCmCDEkRu18CFnXAtgaOWShJT1OaxWzZPtMENfA2juQIf
         J42lCiZYyDhKbRzSw9/s1LXaLjlOK11ZcAPiMj3xgEpZ097IUbacdvo9Aklq7Ywr+geB
         00VQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id hf9-20020a0562140e8900b006a0471546besi23054169qvb.45.2024.04.27.09.07.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 09:07:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-388-JghWwcxVMVOob0-L6aVnew-1; Sat, 27 Apr 2024 12:07:11 -0400
X-MC-Unique: JghWwcxVMVOob0-L6aVnew-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CB6A802E4D
	for <blinux-list@gapps.redhat.com>; Sat, 27 Apr 2024 16:07:11 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 594EC2024511; Sat, 27 Apr 2024 16:07:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20D57200AE7F
	for <blinux-list@redhat.com>; Sat, 27 Apr 2024 16:07:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1D7C3800097
	for <blinux-list@redhat.com>; Sat, 27 Apr 2024 16:07:10 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-284-7i9ZweVSMgSIOac-BZQqdQ-1; Sat,
 27 Apr 2024 12:07:07 -0400
X-MC-Unique: 7i9ZweVSMgSIOac-BZQqdQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MOREc-1sK6A10JGo-00PsVp for
 <blinux-list@redhat.com>; Sat, 27 Apr 2024 18:02:03 +0200
Message-ID: <44d70233-0be7-4067-8d75-672ef2bae651@gmx.it>
Date: Sat, 27 Apr 2024 12:02:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Autible books and Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2404260913230.1920571@users.shellworld.net>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2404260913230.1920571@users.shellworld.net>
X-Provags-ID: V03:K1:lP3T2A6r+XIuGKjo6AOu6o7TQQlRYEpbZTSf3/ZJFqvAtszmqtV
 kToibKr+NKfDGPPFVy6BL36YT9WhNIuLxgzHvoIz++rdns0sn19gouV7vxMKMSzKwlhZ0PM
 /cBftpexId4ppU/RyTh2sybIxonBAzmWHwsLNwLHynrviP7MTGF9yxxBlTvVD6BxVSE5wnd
 6+yGcnc3TJPKdcSEUr/oA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:kZ22FSJqxQw=;geb2dVD6jmBjLgFH3Bb5WKWy1Sv
 SpL61fd7elR2A26LjMCkhsVmebUCmczQFCKtrtPqXzWpIYVsGtmfZjlj5ca31iQmPDe7FnYcb
 WYLsDRkfYe/5WKCdXl07KMdundlkCR2SI4fzw8T4qE6OOm269INhCI4o/W3yaqplcD7g/T73H
 CGDtdUbmgsujmEr85430BBY2ywHyyOvuYQluxvxQ6TqzIDBbz0RJH1wykr+woEwQJDM6F7yvT
 lAJLkVIsTd4Z/iX330/UcK47I79PAX2TCWoG+9BnliIlatYCa/KpOnzxQd+xCrNARDwmBGTQu
 VUyA5X0usHN74lgYysEWq9U9k27soDBXC0U59uWJVgZFlIty+J8YoKiD1iBIDryZMCVhQ/goo
 2Ud6Ahr5clpIf76oC4hTptW7Rg8EZPTrarFV3qbnvegZDJW41CeGLmxhorvxf/9e4tq4FkPr9
 Wmluvtl0pM9Zqy2u0FqAa+kUPcaTaxub+U8YnROktyK0VpRA8QghLMI6UV70m3irLMuwm9krI
 8SsPlhqOcsWs24/PxslUPghd8T9N725KG4eThz2WkHSCFyld72p94+/ZOMJyiXmCgAtI306u7
 pZ3SFrlrbaK7EKDZ2uaZeJweDR7x3ME6ePA71KnUUQ8k6Gx8o0pdjja0qf5tPYCSYrIWZXGM7
 ArTADzyG1BpZoko/W0eFxsnNOERDcVJSzU2MQ280DVMtJoC/GqldQy29dkpNMSbVGer4fGxHP
 zpjshNlPjxhE3Is3r2eAaDy5b8dDFltEZZjzNC7YbsAQctzZ6F/pfrP0P7m4VeI6UdmsyJ/ZT
 rPrgo8zekkXTwm0/hVTWPN4krGtnMH/7TevPDzmCqHQsk=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

I haven't accessed any Audible books in some time, but if you can still
download the old .aa file format, you should be able to use mpv or
similar to play them. Not sure about the newer files format, as I
believe it is encrypted differently or something.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

