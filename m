Return-Path: <blinux-list+bncBDYIZZNASAHRB4EF762QMGQEXVGKNMY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id BA09595524D
	for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 23:21:54 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44ffb762db6sf29194831cf.2
        for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 14:21:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723843314; cv=pass;
        d=google.com; s=arc-20160816;
        b=lp9vpSyibcyCJZuCDhmcA03WU5DZcihcQZRt+xa9lvzHWdyNbkJS2DvMkIDJOSwT8e
         BVavyyktCOa1Xhh8P6/38U7AfLGwWJLiiUnaGZvqCCAHWvUYLjT3pQE+yNcS9kCG/wat
         m5evLM6tQuGWfDxXUCxWXnWPwuBG63c/YIocqNpLctQzU/ahO78+9K4mlhddDeqWFV8h
         grIPGuY/4S19EKHIOpe6o9fXErw1tG35D0LfA3pGz+U6fZ4+x9Kg9rtPWF+RuyYscy+p
         EqzhPnjQHUUWPOrtq5ijAkn/qPt/kbIRZSVMG6Zp60vDI6VwaOuB+oAsXjgcaM/PiUOK
         kclg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=4nf2d2ki+2dhUIhC+vmmfdvYIANc94t6zzN5ZO3HZyU=;
        fh=T13P+RpuxPSJ02pTR4EZqIiWn2ZXSKUPcchxV+XLYZ0=;
        b=B8S5QlS0yBXW4uSbGz2X+gV1aKKxTd0fpFIl8DYF9U/FLQHtIRUfPoVG7A/61SxkDo
         x2fr+exSB6cgA+rfa5EjKWGvfl/1apNP7yiPacWgcA2VC3YSYbvaMyo144ZezX78R66t
         8up7H8I/1ExOefog9YCOprZEDJmzvNEnd8cGrsrhYbvxzI0WUmYOP/0PBpj3bHrRNgWJ
         JflSwgEZl9sB8Veb6bJrDm6KwkTyvjg9lxX5RQdXf1S/hy9joDbbLwso2DKxRO6CQY5Z
         zFD1gF/vyjpwT7uXCKa0Bg+SrLow5l0BsVYmyCh4W7YTqb1wdgvyyCrKeFSNdC8Be6m1
         6IBA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.49 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723843313; x=1724448113;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4nf2d2ki+2dhUIhC+vmmfdvYIANc94t6zzN5ZO3HZyU=;
        b=pL/od7ON3K73qqYJAYkUMdWmligxyls50V6p5cXZi2PL/Hf4K6COeCQSBHFk5sIaUJ
         1z+7hJrppSJA48ln44ylPBuMRsNsDsJo+2X4ontyhPEHhbTytCXgt+HBl/poP+Qg7IMU
         1BYQlm9FEh1N0p+ktrvQHOx5zR44ldzNIwBNCAAjaRuMydf1omuAspqFHM9VPyRvzpKi
         aXLCTyCM8/ivIqsXATOaxAatBBR/b+aTuLnAmMwOSZ+jPu/dr7mOmIzcWBekjoPacAJc
         esxu8akJhUoQLn20J8DUOWsFtsHF576kfXLzVZ9/+vvphEb155TD2m0KHcfM+xloGP+l
         65ew==
X-Forwarded-Encrypted: i=2; AJvYcCV1/OToOZ1Bznx62adBJi3MSm0cg4YaVMjWKfqw621TJZJAmXKppDjcvmU6ICbbRHj0sjkPu57ezMxsjbJJQZnNiNGsZougeL5I
X-Gm-Message-State: AOJu0YyAf/Y3Ujn0A5AS9+Bphopf5X3my3DqR15oNe4sytXMXb0f/+mL
	c/3Ten2xh9nVHxaTd558b3mUt1A408jKio6DdtX1LOUo6evSjhn7VeRMm5YewAk=
X-Google-Smtp-Source: AGHT+IE32KhHb53OeNVafVBtOwj0KrluaRVbd9dK7ZIc8ZYYtJSV0O5gkGf5SoDcXdYpChjMHUPS7Q==
X-Received: by 2002:a05:622a:a13:b0:44f:ea67:1012 with SMTP id d75a77b69052e-45374207271mr54221331cf.13.1723843313418;
        Fri, 16 Aug 2024 14:21:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7dc8:0:b0:444:f4c3:34ef with SMTP id d75a77b69052e-453672fb856ls30894311cf.0.-pod-prod-04-us;
 Fri, 16 Aug 2024 14:21:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXxAJU5unEzermHNnrKsYPKeDR2wRAzr20ETvVnmxxKuQTEFZ0BPeh4dYG/Skq3nmbGPyzKpH90JsJx/O8PsZl3z/ewnOPT23qZpcBA
X-Received: by 2002:a05:622a:4084:b0:453:145f:9b1f with SMTP id d75a77b69052e-4537436383cmr48620891cf.50.1723843312295;
        Fri, 16 Aug 2024 14:21:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723843312; cv=none;
        d=google.com; s=arc-20160816;
        b=qsVJ10BBiwKvxyxehwlutb0pq0ZSCtjFgnbLGNkjBtP5L8Noy6nwzaD23FVKSsrves
         zpOqqOTQJul43gvg8dAWmrA9r/yqJtpdfl1LSvpSBWplgLzQMwiAUdjQXTEuwgdIX+FF
         WYuI+oyhHHZu7tGGRaIIiN6r29RVelPwLGNYUuCRIDCo3SapL1VrgYxgop8qrUAH8ndT
         qc49zl1sXm9/3x8mZBU7d6zcEQ9OUscsHoMf0FPn/ngxBrmTnEpr/hRyq5fUxydd4sB6
         r0f4eE/QUCt0MQKWfNpGcy3pQ/XfQLQr9yL7m5KHzGBUhMm6taMzllq1af/KQZnmRFPT
         HCxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=NKV2N4/EH0wMoVRjwirYzwBZ4Eaki4go3uX2pS1QZUw=;
        fh=rXdxI3elPF+8pBMvq0AkZ+YN14EOdcsTE11ZkgNB63g=;
        b=qcjrigN8jPeRosXFrq6nAlEPLtVpQWl58iIpUmxc6G5MXfUWnlU46wnWagkja0tUIH
         HXCV2dbK29PpnEcBqXWJDwNt/jwxtIKVce+ywGbrNoYJQgMpo1QznhSS345ZOS5Xiql6
         tfmPb0zhgpqmVwIg0h9KrMwGEU7aM3xU88pjqnI3RlWBAo79Ls2Z8rq/KO/4G+Tvf+tk
         8XHDFxVoGjtqs1cXdb2W9GKzygmrt3lXk4UXSpXMOUB5YjwmuDmDgzcSGLMioU5nlUnr
         7fMX4op+C9EHe8SQa27frAdV45G+JNAN57NXsH7YwhpMcYcQ1EtzLsiU4ODDnlrF6eZG
         +pHg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.49 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4536a08f99dsi54471901cf.487.2024.08.16.14.21.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2024 14:21:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.49 as permitted sender) client-ip=209.85.210.49;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-206-JIOtgWOrO2q7EaJaWFSRkg-1; Fri,
 16 Aug 2024 17:21:50 -0400
X-MC-Unique: JIOtgWOrO2q7EaJaWFSRkg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2AF111955D48
	for <blinux-list@gapps.redhat.com>; Fri, 16 Aug 2024 21:21:50 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1B1BB1955E74; Fri, 16 Aug 2024 21:21:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1884E1955EBE
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 21:21:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8A6E81955F3D
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 21:21:49 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
 [209.85.210.49]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-680-h0k_3QHMP8-SN1FTremo9g-1; Fri, 16 Aug 2024 17:21:46 -0400
X-MC-Unique: h0k_3QHMP8-SN1FTremo9g-1
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-709428a9469so1523804a34.3
        for <blinux-list@redhat.com>; Fri, 16 Aug 2024 14:21:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWYvFVPBhBxW3qscJiWxT/pkbPA0Ct1gronN4YeipBsN1yOhLlD5uuFTBYYB0NLP3gEcBEoXF1yFrLMn25MhONCJQn4Xh8J
X-Received: by 2002:a05:6870:ec88:b0:25e:118e:ce89 with SMTP id 586e51a60fabf-2701c378ccbmr5087900fac.11.1723843305201;
        Fri, 16 Aug 2024 14:21:45 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-27014fb896fsm830256fac.1.2024.08.16.14.21.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Aug 2024 14:21:44 -0700 (PDT)
Message-ID: <092ebba6-ace5-473b-99f9-918131f26949@gmail.com>
Date: Fri, 16 Aug 2024 16:21:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus wifi
To: Jude DaShiell <jdashiel@panix.com>, Didier Spaier <didier@slint.fr>,
 blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
 <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
 <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
 <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
 <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
 <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it>
 <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr>
 <dfe37f43-4cff-4824-98a3-03db71574034@gmail.com>
 <7c18c2e5-9a5b-4ffe-ba0a-1ab33f51796f@slint.fr>
 <3526dc72-a0e2-6d55-b3a8-b2d38939e301@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <3526dc72-a0e2-6d55-b3a8-b2d38939e301@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.210.49 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Jude,

thanks for this.

this is very helpful.

i will add this to my notes folder.

i appreciate the info.

Rodney


On 8/15/2024 22:18, Jude DaShiell wrote:
> To get to nmtui real fast on emmabuntus press super-alt-n.  Downarrow then
> enter to activate a connection.  Then downarrow to desired ssid then
> rightarrow to activate then enter.  After that key in password when
> prompted then hit enter to connect.  The tower connects to this very weak
> wifi network but a chromebook and a raspberry pi 400 cannot do it.  The
> iphone connects as does a fire tablet and an android tablet and this is
> all in the same location.
> I found out earlier today after getting archlinux to connect that the ssid
> has a space at its end.  I did that with:
> iwlist scan|grep ssid
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

