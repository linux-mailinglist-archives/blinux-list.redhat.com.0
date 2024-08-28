Return-Path: <blinux-list+bncBDEPFPWCWMDRB6UZXW3AMGQEEDS2BPI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AD4962D6A
	for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 18:14:53 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6bf9926ba79sf97245106d6.3
        for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 09:14:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724861692; cv=pass;
        d=google.com; s=arc-20240605;
        b=j0Xjk0YxtXWpCbcEK+2aTwPqhuV4aaG9JH2pm3EBU0B/b3HHhXS/scUDk2QhOOhQX5
         CovUbwtCwxdnYRp90BcTI2guVNgZKmrVJCP7/BsECuKeh5xXChjhXzueqc3Zd9MMjde/
         zfmUj0de6x61GnEVLapHIHxt1XJcCvxbsmrdRq+a5jcpc3/IhNRBCY/9T87AM8VW4DeY
         sjMZ56LPkppcpfXF5129B0bFRkc9XVYHhrRadywDkkn+o2SNu0hDYz+HKhFpcZetXE+Z
         7etQ31e4GTTNqYPszcv/yiZyFr5uTyJLMNHE9/+Y1TI1A+isgKh/ihb+uM+uKf5kEX7k
         EU+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=DxLJmhdjAZcF0+K3471LbQ92zgh6B/uKFJdt17dkWWM=;
        fh=BexHq2FJZHeg4UBdOBjLR23DPvTUKOTzCPh2RRY1e5Q=;
        b=QVZt/MpRUuwrKNVU1feErm3GRtMYKK7DbtEi0R4q5ZFzo3lLrs3D3IihGwfRLgteRu
         pRelzSNPnNbKZ6I7th2/DYZ1E65iPOcsrjYQbW7hSBaz1SZ9AgNMOeX+0h6lemGsmkYw
         N+beO66dtAYwerdGS7qutoPHMatt+h50oDbHFryZEprhEupNbYj65vhQHkAWCZ3jMx3u
         6awoUmRUT2D7Balcx5i1xuPkj8+nz6vgoO04XsqZgHNEQUg5nIWU6eZU0LMc6CtN6USu
         WEoB7NzVNuZWYa2LpGqwZZ1BYOlSvVi+eHyvAoHxw/l6O7B18KxNk/b73UjpsHjOfEJt
         ITTQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724861692; x=1725466492;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DxLJmhdjAZcF0+K3471LbQ92zgh6B/uKFJdt17dkWWM=;
        b=AkQheUwtwpW6ZbXRGxJ/eZT8YFPqxShNT9hBbiqxYb1IlMElcfY/B2S31pRSk9BFoj
         rDaOhBbk7mDPlzmhFCDxCiCaSkUIvRD4uTfXDCS/GIzj7Khs/K/3CJsDbn/oQuJQF86r
         nMgjfpf9CyvgqVFKVZF+R6xXTGK3WDcaEr/n2HtBZJGbRNheqvct+PsBn5VNDyFHl0tl
         Tm9OiqAvEhDO0DMjUXtap5EI6BYOYWKe1xHmx14OduOCajWrePzbMQkhXz34lA1vymoW
         0QBmT2aEk4Qo+MJfbJAc9bcxohu0oMnMNNc9jW2oT5j+ZQR6jBHCbjMBnu0GylL2DlJS
         3DHw==
X-Forwarded-Encrypted: i=2; AJvYcCVW7lHNTACFmfQA7uu5ajWJ/S/iuxzF6zfqrIVBoAEmWF94NaEOjWhJ4Qk5zFdKqORyuL5N5Q==@lfdr.de
X-Gm-Message-State: AOJu0Yy/55l28/a6UOXSYyo9rDkvcUF1ZeNTR6HnnsQnWjVBN2BJZ/5q
	9IW1HOy03qg3y7H6TRXlg/U/1wK0y81yBF1LBUEJbBoS2o8X4sjaOwHRYPWvBo8=
X-Google-Smtp-Source: AGHT+IH8eubl8gqJiNiZZ4pO/DAPQ28gIlxjL+8gMZ5pQPbQlkBg6Cwq/JeQr4crJ89jO6O4/hIYxQ==
X-Received: by 2002:a05:6214:4287:b0:6bf:8f95:6a81 with SMTP id 6a1803df08f44-6c3362ba667mr27419786d6.11.1724861691212;
        Wed, 28 Aug 2024 09:14:51 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:20ce:b0:6b5:da50:ac19 with SMTP id
 6a1803df08f44-6c33e0a1c8fls330516d6.2.-pod-prod-07-us; Wed, 28 Aug 2024
 09:14:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXS2d4rbuJ1SiJOOmO/y7TDA7xToYeMKRxYcH6bBlYjT8HXdKwRSg7pLYdj3rWZBcP/qcR1lPLe06ezFQ==@gapps.redhat.com
X-Received: by 2002:a05:6122:2009:b0:4fc:da8f:c8a8 with SMTP id 71dfb90a1353d-4fef0e96769mr2801911e0c.1.1724861689971;
        Wed, 28 Aug 2024 09:14:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724861689; cv=none;
        d=google.com; s=arc-20160816;
        b=zakx6n7LKzeebZyYRT/C4KOsOtJMMzRWZidwUwd1WfqRgKqSYtK4FQ2dw5oSzUyWKy
         DsQYuXNZWavqBk+3hSTVtZcXZCPaEjQWHCcOGdjfgXb3LTSsjUlHplJRj5qg7esNQmOb
         AnBFV9Od/aGpmCYqZdV28+EpWLe8ZUOBwavBq14kZcmyby/kI7WGrD8Bsd5SZ2EKbCP/
         QXNYG9F6PdmRD51n/m1tuadb1VNpeRP/Y6eQF4Bn+gv2WaPfuUkTjS4fjYZ+zVKkxI5E
         gHhMKuJTnqP2LBq2u198D6t4HnjGz1qCYUAybb9ih4fVVVMzPaIDfwvH/IqxZ8qXqTzc
         5zFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=H50HkJ6RxB1pJvGDvjDeOjCzRkVn0JD147F2dm1DDUY=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=boNiNM0+mLuUcx/m1mOZ68Dvub1HRd/BVWiuAEU0+XvECbbur2Eng4jk4/TqtBvLvT
         ouOhH9xEVXBI9+FsJb0/Y3Ms+CcXbvkUYRmUK8NHY+vD66oPLvIi0Cf8w0tKuCJ0O5WS
         c4MZub+Ga6fB9t248ISfhVZ3rtQHofGh4S4wPeMtwa4CJ2Icy7GMYag22zP3Mh3sUOX5
         RrHk3cucUchSkii8Et0oOkZzzmw7GeNnpzIs0bnxeTuhLfYJDburWkUNSh+gJPagr+L0
         EmdVRY/2ibxySBDWbN/FjbCV6QskfARI8yiYI1YqQv/R+2Sd4wMIhzO2+UdsiPr1peJt
         WvPA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 71dfb90a1353d-4fd0832d355si3226301e0c.127.2024.08.28.09.14.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 09:14:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-662-dhfGgM58OOe7ANKyzLgdFw-1; Wed,
 28 Aug 2024 12:14:48 -0400
X-MC-Unique: dhfGgM58OOe7ANKyzLgdFw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 95C0319560B7
	for <blinux-list@gapps.redhat.com>; Wed, 28 Aug 2024 16:14:47 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8DD881955D64; Wed, 28 Aug 2024 16:14:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8B5F11955D59
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 16:14:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 08CC61955BED
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 16:14:47 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-487-m3iotoFVPLe7DbhsBErgaQ-1; Wed, 28 Aug 2024 12:14:44 -0400
X-MC-Unique: m3iotoFVPLe7DbhsBErgaQ-1
Received: from email.seznam.cz
	by smtpc-mxd-755bfbdc9f-rqmvn
	(smtpc-mxd-755bfbdc9f-rqmvn [2a02:598:128:8a00::1000:485])
	id 2c995da339010ef92d73acbf;
	Wed, 28 Aug 2024 18:14:43 +0200 (CEST)
Received: from [IPV6:2a00:1028:83a4:109e:8885:f9e7:f0bc:2394]
	(dynamic-2a00-1028-83a4-109e-8885-f9e7-f0bc-2394.ipv6.o2.cz
	[2a00:1028:83a4:109e:8885:f9e7:f0bc:2394])
	by smtpd-relay-5c67c44987-5m586 (szn-email-smtpd/2.0.25) with ESMTPA
	id 83110bf2-9e8f-4626-8553-96ad88378b86;
	Wed, 28 Aug 2024 18:12:03 +0200
Message-ID: <027d345f-3350-49c4-acbe-63cc77d96e82@seznam.cz>
Date: Wed, 28 Aug 2024 18:12:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: What do you like in Accessible Coconut
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <14b31a22-f67e-4102-a2b1-fcf8e4c9c540@slint.fr>
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
In-Reply-To: <14b31a22-f67e-4102-a2b1-fcf8e4c9c540@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: seznam.cz
Content-Language: cs
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vsmiro@seznam.cz
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
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

Hello,

I like beeping grup, games and stable Mate in there

Best regards

Vojta.

Dne 28.08.2024 v 16:03 Didier Spaier napsal(a):
> Hello list,
> 
> I am doing some bench-marking of accessible Linux distributions to gather ideas
> of enhancements of Slint that I maintain.
> 
> Among these having tried in a Qemu VM Accessible Coconut i have found it very
> interesting, hence my question:
> 
> What features do you like in Accessible Coconut, including but not limited to
> those you do not find in other Linux distributions?
> 
> If you did not try Accessible Coconut yet, links:
> https://zendalona.com/accessible-coconut/
> https://zendalona.com/accessible-coconut-user-guide/
> https://sourceforge.net/projects/accessible-coconut/files/latest/download
> 
> Thanks!
> 
> Cheers,
> Didier
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

