Return-Path: <blinux-list+bncBCHY5TMQ6YERBU4EZGWQMGQEWJROIGQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB3683C077
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 12:13:25 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6800aa45af1sf94960316d6.3
        for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 03:13:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706181204; cv=pass;
        d=google.com; s=arc-20160816;
        b=0w0itIe3pxouXbNIGPW5z60U1h8Ud0nPbrg1U76ClDvSQSc9zXIBZL3NrM1rcbR4KA
         Z9aA4JZxQNJwMOiM5/31uEt5yacKVVlTzIQTRV6kkn3wPMd+LqTSp0jPGb25NouJsXeq
         gggnhLn+4wD8Be/0iykPWkwyeEMcbtLWy9+O5AhzRUA5M9aQ6jQyj4IC7mrYc8Z26bbj
         cF3JO9SKhGvEoHSZ5bYt4Nq0f7uXQGuzFbPik/ez3GiIQWRpMvezHlcxSXnY7GEQYg/y
         x92lLVOTL0t7UVXl4lj0HpN9r1fI/4u56TdybcQLVqd7465oWyn7SGis3jSag6TBGZTu
         RLJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=3/mUKdCYA0USm14zjSEJtPwiHR80GZWdMurrbe4ZljU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=lqf/9NuuUqDEcEsmBcaO0YvN9D8kg5FbdmpZCF67IDizKN2XwiNm17dtuvscxv9Wwd
         qG5CgkjQrfJAVuCWxaXC76vQve+uSYvL4PP615uV3HPsDWxjFm1rPifd0qNG1GBQ3vWY
         M8avlsiBN7/FB8FAGXTw2CeortdajeX/IYbr0HRLZO/yVzuQaIXJ7PUDRPoWT7XJMtuk
         BJiXDZoQtJUQLjQPm9F1nycbZETVPPZTNylOy3ZP6/xliHMHo5TG3nddjRGb+1dJrsGI
         YJQrs9YdPFx3x2WYJAnBGYHYILVtXzWjwY/e+aVXwg3trCAii/fR59ikMHze64CdU5dv
         Ys/A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706181204; x=1706786004;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3/mUKdCYA0USm14zjSEJtPwiHR80GZWdMurrbe4ZljU=;
        b=LKbPfF3X5ebu/+9dUL57YI5U5aCy95lISf3joAfgd0/z/uC0kzDwOA9ZvUCGBz7imt
         Yvp2hq41hNjsKdE4Fhzf/dQQsyCSfz7uC5qj3o2UvrFULyPZQY0zqNRznr3zs67qlv62
         IO4+ohfZ6Xvx2xapz88Z9accZFsDgQLgEgs8KH9Vjq17sqmITUW+WvN92Wpouc+L61L5
         eGEm+io9uW2YXvYA0mjp+qvpikI8A9gnKGYscojdbLWjIBOHN3RK69nJZk6/Gi3Xya2t
         i5tip8+8chhe2OZ9wSKEY+Dn6XAkWrzyFYzPWwZvQ2Ro9njBMt7LUbxE2sS4S3lNQlHg
         hVfw==
X-Gm-Message-State: AOJu0YwrAI83a39GzMIfEpTAvz+poEb+RGVzgYkYvaqR8jcPz1z6TAR/
	dfATeQ8SxpIKJHbN9LQ0kkgSE59xbXUhV1ObIoyvD82ZywERuEeAwZQmmsqL81g=
X-Google-Smtp-Source: AGHT+IEvaFx3InXUhfAJM1VtB5zFs7JwRsDzdDqsiptFaJ86g3H9ZBlux8BNtv4N1OsVcVek48drfg==
X-Received: by 2002:a05:6214:21c3:b0:681:9f8:845f with SMTP id d3-20020a05621421c300b0068109f8845fmr897264qvh.101.1706181204377;
        Thu, 25 Jan 2024 03:13:24 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b345:0:b0:67f:744d:8b3e with SMTP id a5-20020a0cb345000000b0067f744d8b3els7330356qvf.1.-pod-prod-03-us;
 Thu, 25 Jan 2024 03:13:23 -0800 (PST)
X-Received: by 2002:a05:620a:2454:b0:783:53a7:205e with SMTP id h20-20020a05620a245400b0078353a7205emr1136926qkn.145.1706181203333;
        Thu, 25 Jan 2024 03:13:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706181203; cv=none;
        d=google.com; s=arc-20160816;
        b=ZU3kFPn28qOPPOVxi6cDpW8NZaCOCjMaJVFb3zCPUZ5cmTcE9NpWFgJXUlTCJ2ESoM
         syfOwmvTu0eGEFchp54EtEx0HyvK/dhap4Yjp2qyLVvbQemo8yDGp5Q/e5jXIDgeSXAC
         fDVsMUcQJvteOxju0SsUr88thdyiA8A+wM8bvE0E9GvQfJEgOZ4l8bV3+ixQCGVt3hwL
         zR6k6dlPa8rRrRxK9feLPo4X5DzXan8eNDX/DQutP8SaROae2kD/8DsL0c9iHwAhcdxT
         1gN8cwn/OORWL9QdmJPrhh+yEppbkMXt4l+G31qpmidbr5sYsDVG8WEl6GojujZZ/bLt
         cIGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=h6r6VqyZiRFBjsNAV3kF/nEk9VwKySfMBo9KWQGRqTE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=K7FPENuS5LI5pZCzj71kt+MxtE/TzhLX6gSx7aTbIP1/ifvE85LHqHUytZGOUp3Rqx
         OtYwPd2PSbD2qP5381j7JC1fBc19chCR0ljeucMsJFwEAJI4Vv1e5lrKh6ti+cmCw8zi
         xEYd2y3y77QcbDQwR/A1kHNI6GXxecCNHOutTcA14XIRti1YQDBg8LJ/83R8MCfdmUSH
         zhmIH0COk5hce+OIPV6eqcLY9DKs+zKV+WIzu49Yb56FDEBBlNtZDQgEacScq3EhtZo6
         iYLJ5g2VGNgSH2I9N2uOq3xne7XBhSEnWEx2IXAI71LAWqu3L7wwmaEjhF25U1j64bvX
         fQOQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d14-20020a05620a204e00b007832f29a421si11845862qka.361.2024.01.25.03.13.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 03:13:23 -0800 (PST)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-668-3u4S5F0pOJe6y7mfY4lqMw-1; Thu,
 25 Jan 2024 06:13:21 -0500
X-MC-Unique: 3u4S5F0pOJe6y7mfY4lqMw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52B761C0690B
	for <blinux-list@gapps.redhat.com>; Thu, 25 Jan 2024 11:13:21 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4FF712166B33; Thu, 25 Jan 2024 11:13:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 496AA2166B32
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 11:13:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2DB0D85A58C
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 11:13:21 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-544-D5DnrVUpNcakVm4A8m_w8w-1; Thu, 25 Jan 2024 06:13:18 -0500
X-MC-Unique: D5DnrVUpNcakVm4A8m_w8w-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id EC69D3F88B
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 13:13:14 +0200 (EET)
Message-ID: <90fb55bd-90ae-421e-8561-22edbf30fbfd@harrastenurkka.fi>
Date: Thu, 25 Jan 2024 13:11:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
Subject: i38 and debian bookworm
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
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

hi

I'm trying to install i38 in debian, an add-on with which I can make 
sway and i3 work with orca, but some packages seem to be missing, where 
for example I can install the gtks-menu package, it doesn't seem to be 
available in debian and the installation script says that it is a 
mandatory package

https://git.stormux.org/storm/I38

Elias

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

