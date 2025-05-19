Return-Path: <blinux-list+bncBCJ6JXF6TECRBN77VTAQMGQEOCDA3IY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D28ABC09E
	for <lists+blinux-list@lfdr.de>; Mon, 19 May 2025 16:27:05 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8c8a36dddsf40416176d6.1
        for <lists+blinux-list@lfdr.de>; Mon, 19 May 2025 07:27:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1747664824; cv=pass;
        d=google.com; s=arc-20240605;
        b=M5CYqa80q8KVk5Ft3utvyTh3OUii5Bq0jXN8NpiCNiY2vEu6lSFTGN+GPvseuB5Fec
         hoXth7iJw6ZzaW1PWzcN1RZPLrc7A865EylxLjNWrVOZFCyulo4tjsbF6P3rd3OTRvIM
         A/+m4hx47cfqqR6D4o6M6mSkFCC8szUyc+9wrap6jrHr4bv/QY+Gwqgc8wKFFaSBaAS7
         5q34qVpJ71JC8QYTqY1wXCeOj5aSf7INLKBcLnwTs+5+cTqJIa+9+LceY56TEnZpkNg8
         7PXNszt0CsciRrHgNamH59HqyzHf9LUvpPG1Hh3QvSLPTPGYFjm3WKem7tREAx/afvZS
         XOaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=mgnPQ3fPoZRNKUDc0fWeUIQw20F38e9loCL5UggfPsY=;
        fh=NGIcXW+ePuJOdyvbkQa5uupCAFVpJ1QHRhBLuVjXnQI=;
        b=TLwEJJ3rjsdC4IEqp3+fLNobf4uaQHyjwAKk9H69spiYT5PLP3KnSpTzhp7zChvk0c
         cox60/3z+YBYyXjoYAd7+BJUjDCmKkkgAIko9t8pEumiNHxsX3x0BrPSrdpTValvKxNk
         ahXi9cHD/Cd9d1H9dercx7OnPrNOZbWMWgVyJfcSp6qk4mNrVc0XQYD8F0Phx5ivqi3I
         gIZX71vMgYnit5wd6LQWMZ8647KErmbHkZm9r7XuLeo07kwq+tWoYzU3X4V7tPhZdPeI
         KtYFzfpo+o47OpsKZJL2dAaNDV07atQO72puPpB9BH8TqRIi8y0bxyl6m01ZHgkIVaPU
         WsSA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vilmar@informal.com.br designates 209.85.217.48 as permitted sender) smtp.mailfrom=vilmar@informal.com.br
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747664824; x=1748269624;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mgnPQ3fPoZRNKUDc0fWeUIQw20F38e9loCL5UggfPsY=;
        b=TuRWPNxcXRBsJjUGtsrsW5T0Gc//IJFLuEeHLzYjQ3czHuOO5Q13hYEuDijlP+29IG
         W6HwDcay+/05s6KwZCt8M+O6wG9E4yQw0GT5ReHjryPhOq/HenA//Mea95DXKxgOB3uf
         AWV396RWCELpcjJEkT92Eca91Lrp7Id3AwoDdAGjQEIYVsQupclwk/KLgnMwJWLiV/5e
         PqPIVRFqJuapLpdjfGyyVwJCq2iHvw8hpcaAJgpMeduRHqwmtiLs2Tgh3XMksvcUTr3E
         iG5XqStDKHY4S+MBZVRcwVlcNB/J+rzS8HE7Jt5pww06KNXSLUyVHOS9dEbPUkXPuR5P
         TPeQ==
X-Forwarded-Encrypted: i=2; AJvYcCU4BPF90waAwqwCf51ElR3G2r4QUzAeRJ39QhkjT99a+YcPvaYCYJwcCk2HGdVqhiuSNJb2BQ==@lfdr.de
X-Gm-Message-State: AOJu0YyttKLMynndfZ4gzPhPbGc0NdwxY54nkTP5W5aDctv4Hu5DQvko
	XiiuNq6LtQKoukMaa9vVKSF+2h3JbYoE0cq3jVCuooHw8s9+Jo2naGwj8497VmSsLiU=
X-Google-Smtp-Source: AGHT+IFdtJYSTaeccPZ+X51OxNKoBoxzmpclcObmtSoBqlrIUGTjXhffDY885qc9BN7+gt2Xd/LpMQ==
X-Received: by 2002:a05:6214:da5:b0:6e8:f3ec:5406 with SMTP id 6a1803df08f44-6f8b2c74297mr235693586d6.19.1747664823937;
        Mon, 19 May 2025 07:27:03 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AVT/gBFcZZCzNfVqi1CCjlQXqMOh40eGGDBxUyyHhWy+AMEpgQ==
Received: by 2002:a0c:f847:0:b0:6f8:d5c5:ef7f with SMTP id 6a1803df08f44-6f8d5c5f168ls23247586d6.2.-pod-prod-06-us;
 Mon, 19 May 2025 07:27:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUU2ceUHNxJxMWzKpYrbzGrSZm0Bw0fhS8hu3SmoidOM/rj+6ORbZND0FsO8Uf47VP6ChWFS1AdXvJ74w==@gapps.redhat.com
X-Received: by 2002:a05:6122:da7:b0:52d:b8fc:991f with SMTP id 71dfb90a1353d-52dbce2ab91mr10190026e0c.6.1747664823184;
        Mon, 19 May 2025 07:27:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1747664823; cv=none;
        d=google.com; s=arc-20240605;
        b=CN27Oc8SvOh9E1ATE8Z4JSSHdbF7y1LoujVIlX45GS7SWFPgd6gB9VZh8ZLyiTN1nI
         CEiFhLfbrib0DfVTGmf/6/K2Ra4r3r870Y8UI5LTr25oGHwgr8i2ffx+y6GsE3Tyd4Fx
         0cOr2aoH8mIsgCFVc51w2FS+xjTALUCL7q0q0E1WcUCMZYxRAp6R31WERicJHu7m+w+o
         q1Tp+291gSbLUnPx8SbruzyjnnUsQteBCnitLwTBQUuk2HoRwksQyxqFyZI+fm8VvELD
         6dvsJX2JiH7PdO5FzofWDR+3Ygigju5eOhs1GML6LZlpv59Eo31/suIOj1Eh8Yt8xkSu
         e2ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=sAbhYs/oGrb6xmh0G9zJ3kG2xN/NAkdikuNv/2TRZrA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=GzGBMRheD/mXpzxM9Sr0UEKf3n/NfEFVBfOBSE6XtaN4d0mnGy3/4NcOnm93jw65aj
         jTZZRuYETYRDoeA3uxnPFpVnmiJj5I8fNG9KbU6Ku+Pdtj751wh/Sfqpw7M2PYzLD8mG
         FZtX3siMejEXfZxoZv1eyQJ1Wfi9o5/CTNeOQC1jmqug3UhWzYAJA3kFz8jfQpvbO+4Z
         +kqLqBE8rXJUyGq6JSNmAvU8MbkapEOTAzj8ByXNJgnLC+xBUyb3euHnYUI1/mxSTSz+
         P0emu8Rpty4hdiy2Z6OmjZ2CK8LXLi60ZrUuuQvQ7OeKrW1aIUlOgL33l8uDtzh+mnRq
         yPkQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vilmar@informal.com.br designates 209.85.217.48 as permitted sender) smtp.mailfrom=vilmar@informal.com.br
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 71dfb90a1353d-52dba944d39si3340265e0c.69.2025.05.19.07.27.02
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 07:27:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of vilmar@informal.com.br designates 209.85.217.48 as permitted sender) client-ip=209.85.217.48;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-531-WuAKhNfAOV-hH3_HeG408g-1; Mon,
 19 May 2025 10:27:01 -0400
X-MC-Unique: WuAKhNfAOV-hH3_HeG408g-1
X-Mimecast-MFC-AGG-ID: WuAKhNfAOV-hH3_HeG408g_1747664820
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A17621956094
	for <blinux-list@gapps.redhat.com>; Mon, 19 May 2025 14:27:00 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9CEE91800570; Mon, 19 May 2025 14:27:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9A06518004A7
	for <blinux-list@redhat.com>; Mon, 19 May 2025 14:27:00 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D00DD19560A1
	for <blinux-list@redhat.com>; Mon, 19 May 2025 14:26:59 +0000 (UTC)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-613-k-G57jw4Ohyjibg3jgOV8g-1; Mon, 19 May 2025 10:26:57 -0400
X-MC-Unique: k-G57jw4Ohyjibg3jgOV8g-1
X-Mimecast-MFC-AGG-ID: k-G57jw4Ohyjibg3jgOV8g_1747664816
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-4e14fa5574dso67332137.1
        for <blinux-list@redhat.com>; Mon, 19 May 2025 07:26:56 -0700 (PDT)
X-Gm-Gg: ASbGncvOpEVB12fZCTaP+qijPYsPGrsD1HM61fQ6llQUHBE8knXXGiC/IcBV5jd4AD0
	KnEht4atz/9/P1Vl7DnSllp2PPLgJykGf52g9pyDTBHJnsO5WDtWwgcWzvIwzxSiiHCoc0fqq4E
	MfuHL3ZD1uZI4EyFnYKdOZ45nKv6h/RnkQ7Jeoc15b/8T31MdS48OTirdCtvG0JwGiGjPWvhM1H
	fbVKKLlDfbcMBx8zi/TYqU4u8eeE8FV/cEn2wdWYbUwCDSZSUcIFjVH1OhhmvhaaAhd90bshu+7
	FsK3ddTaw3GwH/59dohKlCxTpq8wYoFIQWYOU0E6FbOsnHhumZ54ZTY=
X-Received: by 2002:ac5:c0c4:0:b0:520:5b43:b843 with SMTP id 71dfb90a1353d-52dba619a5emr3084971e0c.0.1747664815402;
        Mon, 19 May 2025 07:26:55 -0700 (PDT)
Received: from [10.2.194.0] ([200.152.34.22])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-52dba910a60sm6824676e0c.9.2025.05.19.07.26.54
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 07:26:55 -0700 (PDT)
Message-ID: <e4be449f-d224-4b06-babf-60ce2f9db887@informal.com.br>
Date: Mon, 19 May 2025 11:26:49 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: vilmar@informal.com.br
Subject: Re: external drive
To: blinux-list@redhat.com
References: <6F40900A-CA39-4201-AC94-4A8ABDFF938B@gmail.com>
From: =?UTF-8?Q?Jos=C3=A9_Vilmar_Est=C3=A1cio_de_Souza?=
 <vilmar@informal.com.br>
In-Reply-To: <6F40900A-CA39-4201-AC94-4A8ABDFF938B@gmail.com>
X-Mimecast-MFC-PROC-ID: teibwb4NBtg1O9KdUB0FnNIr2WtodYVDxJx6BFHWXpQ_1747664816
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: oZOYWS3zegEgOdqmvHu0thRhYO59hIGLL7mJZgRddqk_1747664820
X-Mimecast-Originator: informal.com.br
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vilmar@informal.com.br
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vilmar@informal.com.br designates 209.85.217.48 as permitted
 sender) smtp.mailfrom=vilmar@informal.com.br
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

Hi.

Did you try to mount the drive manually using the terminal?

On 5/19/25 11:17 AM, Daniel Crone wrote:

> I have an external drive, formatted as e x t 4.
> It was used to back up files from a fedora machine, probably fedora 36 or so.
> Now that machine has fedora 42.
> The external drive is seen by disks, but cannot be accessed.
> What could be the reason for that?
> Any idea how to access this drive?
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
-- 
[]JVES

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

