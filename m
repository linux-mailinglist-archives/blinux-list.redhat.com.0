Return-Path: <blinux-list+bncBDH4HHVNTACBBDNH2S3AMGQEW3IFZTQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B812967D49
	for <lists+blinux-list@lfdr.de>; Mon,  2 Sep 2024 03:23:27 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-45721e5f943sf22191201cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 01 Sep 2024 18:23:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725240206; cv=pass;
        d=google.com; s=arc-20240605;
        b=PuV4GmwKGqrbbtnCKxEBBBhqCWztjwbrtJEUvJYIbiE+KSmVI4A6h8oaqvetYvI2Ca
         M7l5nJvAEjuFDS8PPQH223fxAZLDMH6pY1aL9mLJuT8JL4HSoG4hOdRGfPbATpCfQF4t
         Gmnbl5OX1UJz7t4DcAdveGuizWcdKxyfzE62sPwfM4tg49LNFy3dJM+JKTt+tXipV76v
         iD5aGg2+HzXxFkeMAbOZdhz9OvmqFopU9yO4s+h4oCvHDOvuxZYyOEfkiyWzoGZmXBHn
         TFX/Os51sP7kdYou7+0uR9nEkBsPSov1clg0Vws059IcZh15M9PJQ0+0ZkmSGkSciJMx
         cOyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=YfqvxA2iZYLQF8B/QqdOxAE9j2es/IVPE8Rqsq65Cqo=;
        fh=lBr7/twIJ8ZF9HIZ+noczlv0BMkdyTey0+/eZd+nFhQ=;
        b=TkqVGqgXiScYJnqpluj2R+byqRbPDvoZzKwaoXVY07b2LWU+RFV0Ny+Tm7O2fCIRfB
         w+0v0Z9Kmd5LVTQNhdIFGMrQMLge90shN+3A9SJUAfIAQgTmrJfs1PMBk6ERbSQici43
         eUnfvNwbN+Xz5qr5B5OVuKXBYKBDCZivZgL3gYOPIwdmhEYlSAjjRrYDgJD/bC7xqwGj
         oqa+8V2Ca2j04KZVoXkxM0i/jx5ZZmNcfhTuZtvMNOnVWqLGySvAjUN0KloNVZmswD+X
         Q0d3E/A8X41fgiJ333joI9PVyoQ/Nhh5RBFCEOcb04lexWZpOqxvuEJR6yYlqIQEbezT
         HusA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of edhoari.s@gmail.com designates 209.85.166.176 as permitted sender) smtp.mailfrom=edhoari.s@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725240206; x=1725845006;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YfqvxA2iZYLQF8B/QqdOxAE9j2es/IVPE8Rqsq65Cqo=;
        b=M3tZiQzBWmdVc5JepcV3xC+f81O3P7myH6i0do8dvAi3JXDPdxI/s8Tf5ZVpHaNFcY
         dqqcLD8OwGtykZLiHVuaAOAHZQZioqMsjZt3WlDxL1HP1VEjVHHEOOGbLbIXphyUyxbp
         Flg59GjwMVR1vbM+FnvQpkBQjaTFUmnacgzWKKNja5AospmkiiOYrcin0Ehc21uSTEaC
         GAxiF4lcm4s3lmVUueBqOBVybYyoMXKDYpzqcxzZ1ZxorN+xDhHfUdWuybg+PTE+dKrc
         wlJzHprrcERMeD2jjoojrg5lt6hk6zosfq8G1ueXJFSNq/mJKZg4e6TGvTPfnzhiJle/
         eeHw==
X-Forwarded-Encrypted: i=2; AJvYcCUUP457Cf5J5JhG0mYWG1YCTqwEw+p5qURVhG0R4OdJZhwV+3FdDz+aJuZYmZdwShEvDyCElg==@lfdr.de
X-Gm-Message-State: AOJu0YyTdMwbCwO2GEUE1nh/RueNMcMLtNt+oY2OD0IPJOyOU8CI9TF0
	9EUrVhS1RSr6CXw2ACk8brjC1/RNWw7mcsF/tgA1Ww4j71AhogOPBAYq2ssq4cc=
X-Google-Smtp-Source: AGHT+IGMIeOEquAhS+1BHRrTV83x1nNXTnpfceqKlqQV/9+kaX4kK/iZ0Y0Kt6De4YM+cCbWFcbpvw==
X-Received: by 2002:a05:622a:5987:b0:456:7df9:182e with SMTP id d75a77b69052e-4567f530c23mr128058581cf.25.1725240205854;
        Sun, 01 Sep 2024 18:23:25 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5acb:0:b0:447:f206:4e93 with SMTP id d75a77b69052e-4567ed117bels53516641cf.2.-pod-prod-03-us;
 Sun, 01 Sep 2024 18:23:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVKX2H0SNf81dzW1S4QvZhZMmXlL1Jff6ALUO2Qf9dG6nQy1tMOT62MbAo3dzN4KB3H1tyU9z0vbHUlrA==@gapps.redhat.com
X-Received: by 2002:a05:620a:3724:b0:7a7:dd3a:a699 with SMTP id af79cd13be357-7a8041869d2mr1171308785a.11.1725240204709;
        Sun, 01 Sep 2024 18:23:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725240204; cv=none;
        d=google.com; s=arc-20160816;
        b=CFQuSAcdMsk3Hkfsz2VZbqC49k2kByJ3TbnzARGA+928VAKFKexgDkfIALyoJamJ0c
         ZMaowAnGbKqaGE/dcdGpW8ubcwcm+ZGGa5ZehYNsjJp2iYc6h/pH9XdWM1sEBkxeD5Dx
         8gV3TdGtPSMDsVe8msvrFSgKvsRCk0iGz5Mz7Nw8cW1jetWu2FU2SX01c/WTpFlprrDS
         VjYzu3fxpxSQTwd34jlTQHkmwgLcoWl6MO8pNRRQFpmM0xdYWyekCyMlyPssqD0dzNLv
         3c8Lw+fcbbwUEkeSSzvhv+WyeQzTyUGsS9hw87SznHYJSch/BbLj3hNV5Bb9AdmFBW7j
         IDVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=reLd+ebVEEZZRjDpqzDFTD4hLm0PVm3vJCNyiEVckf4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=rKMSTy2j29Jvw+hAiAULHDpeRxDarvvV7+kGBV4Essv0IAY5tCShoq4BFl4PUdjeBs
         Mp7kvqTZeSsyW7+Lf1x3VrM3811RJVeNVqBATS3Y6pHTYOl2hu0e5gy4j5IZyj1Btsad
         soOT9yXhQb8+VPu90CJEK0+BjJmwPBOHIYo27tJTAxASnE6yhuO0klmwuuXIdSoFfa7t
         /UVoOj5a5vB2EU9wiYY7/oGTnbHeYR2XQkmI1I0SD+A76o3TTRQ/OXgYm2YTWzgPwZAX
         8/S7zyrIq2/4qaC8m4WA4v8pY1P018wRCL4Kj6x9gULQ9DqzuYcqgV7hnbTtIR/7bx8m
         AYGA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of edhoari.s@gmail.com designates 209.85.166.176 as permitted sender) smtp.mailfrom=edhoari.s@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a806d82feesi884697785a.428.2024.09.01.18.23.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 18:23:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of edhoari.s@gmail.com designates 209.85.166.176 as permitted sender) client-ip=209.85.166.176;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-528-pkRu-ftAPVKprNNfC_O8MA-1; Sun,
 01 Sep 2024 21:23:23 -0400
X-MC-Unique: pkRu-ftAPVKprNNfC_O8MA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 79F9819560B0
	for <blinux-list@gapps.redhat.com>; Mon,  2 Sep 2024 01:23:22 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 73E2F30001A4; Mon,  2 Sep 2024 01:23:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 713F0300019A
	for <blinux-list@redhat.com>; Mon,  2 Sep 2024 01:23:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DEE8219560A6
	for <blinux-list@redhat.com>; Mon,  2 Sep 2024 01:23:21 +0000 (UTC)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-314-W3d9vn6-NkCXP0BnyeBfvg-1; Sun, 01 Sep 2024 21:23:19 -0400
X-MC-Unique: W3d9vn6-NkCXP0BnyeBfvg-1
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-39d4a4e4931so14270655ab.2
        for <blinux-list@redhat.com>; Sun, 01 Sep 2024 18:23:19 -0700 (PDT)
X-Received: by 2002:a92:ca47:0:b0:398:54dc:1408 with SMTP id e9e14a558f8ab-39f379b4994mr156182975ab.23.1725240198221;
        Sun, 01 Sep 2024 18:23:18 -0700 (PDT)
Received: from [10.200.1.239] ([123.231.128.218])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d22e780ac7sm6411438a12.45.2024.09.01.18.23.16
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Sep 2024 18:23:17 -0700 (PDT)
Message-ID: <e74c1cbc-cbad-41d0-a5e2-baab86af59c0@gmail.com>
Date: Mon, 2 Sep 2024 08:23:15 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: no PC speaker beep on startup anymore
To: blinux-list@redhat.com
References: <cc05931d-51da-489c-93d3-b8a831598ace@gmail.com>
 <a2ee7221-3ea3-43e7-8500-bd720658e682@jasonjgw.net>
From: Edhoari SetiyosoEdhoari Setiyoso <edhoari.s@gmail.com>
In-Reply-To: <a2ee7221-3ea3-43e7-8500-bd720658e682@jasonjgw.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: edhoari.s@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of edhoari.s@gmail.com designates 209.85.166.176 as permitted sender) smtp.mailfrom=edhoari.s@gmail.com
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

I have that line uncommented and update grub but still no beep.

Also this happened on my ubuntu 22.04 and debian 12 system but not on my 
debian 11.


On 02/09/24 03.14, 'Jason J.G. White' via blinux-list@redhat.com wrote:
>
> On 1/9/24 10:33, Edhoari Setiyoso wrote:
>> I notice sometime ago my PC stops beeping when booting. I know it's 
>> not hardware problem since running debian ISO installer I can hear 
>> double beeps.
>
> If you're using Grub, you can configure it to play tones during the 
> boot process.
>
> For example, in /etc/default/grub you can specify the following.
>
> GRUB_INIT_TUNE="480 440 1"
> If you're expecting a beep at the firmware level, then it isn't a 
> Linux issue, and in that case it's specific to your system's firmware 
> or its configuration.
>
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

