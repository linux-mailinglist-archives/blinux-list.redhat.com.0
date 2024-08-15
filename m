Return-Path: <blinux-list+bncBDYIZZNASAHRBDEH7K2QMGQEGWK5VRY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FAE953D5D
	for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 00:39:10 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44fe50f2ec1sf14960371cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 15:39:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723761549; cv=pass;
        d=google.com; s=arc-20160816;
        b=fCdOGA/pPE0QFK0OOPTybAPkEaqSo2ivc9rAqoBAr5IqEiVxeu3zka3aOeIo03jC+B
         4HmbMK/zIV6Qz2zil5hJpR8AWsvzHUxQV0ibscjzc3iEWbuGtZznYcX0x8v36/QB+pKq
         jo4Ejku3zXMHB1us8I4qh5gQxHih8TcFl5k41fSDAVYNw3abOqldvCC8tsc4T+A1ZSHt
         BrQugVwmGJjW9OqZsUHz5W5syM8Ap7D/37+CSDKOu9zu6c1/1fo7cg2ooC98jtjpKFCu
         WysRqUQY/NwunsuUxJAmsC8JT7Shm4sKvgUIZFOSofL36GEjDFz20EU1cSvOVLWkya2l
         AtYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=Olea7EdFjUqvikZg0gYissCfBnfEkNScWYjZW+RIpr4=;
        fh=JvqJZLRZn636tbW/2cHqB+3H0VuguN/DzkJUY0bCdio=;
        b=XgLXc7YeWCnEBboZd/s+fknESkEhEv/LDQd3FUV4zDLWtKhk2ynYhrJ1dhtt6V52Ww
         us8CMH8KcOy+dR/OI+Tb1rl5s2UrBIkaBhCwHAHwFkKExXsoOauUvtOjPy9nq8Zr6G1X
         QVfr4ygsMGqIqdDxAwioNO1CIoFaUU4eRmcUFt+LAN2HJW2l8pSGCWjoAx15Vma1sd6c
         n2k8OGGH1ZSBrqxFVn48XBcTc/TgBtB2UIYxPs0i2FVNb1Kv38cXLGXEYsGBuB6iWKe8
         OjbOcq9r6UkotVG88JVwS0kn/Mj6OQc7l6e8O/KbDBE7vNKQUyqTZTiEh63CNF4JIzhI
         XJ9A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723761549; x=1724366349;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Olea7EdFjUqvikZg0gYissCfBnfEkNScWYjZW+RIpr4=;
        b=sLhAAbKmOfeeQ/yA4P9D1M1WZYH43viU4fC6EXfIoVXAJ3sIwS5hpE8vluJcfYyL6d
         8WlcJqLV1YI4aNfV+mb4sZIeRfUenz6+Qua4ysD8GNk/HUSC4vM2Zpqjjq8JQxrqt6mf
         M/ynbby1xGqsWR6x8fQQ261zyOjIxKMYkbyy3LUA8Ibqf287CzYXL5OVxjWquceEjGCY
         37i7o97187Zmk6GwVYvLzK+aISiZGYyJdYm5jXlUXTP8Ql8jp6CxmbZCT9c9Vr0HYKhG
         oQu5jxVMTbM3bt4+vlOqm4v63aANroXzWLhCqfQbCo1JrvmM7tg6b29xMDQneUgvZ2cw
         QxkQ==
X-Forwarded-Encrypted: i=2; AJvYcCUY2LPOyPxBtwpUP2uHwBV7DN5rfvB4+CX5ltRw1G+8MfApy/mfj/2PX+cxTb3sYDHpG1WvoA==@lfdr.de
X-Gm-Message-State: AOJu0YzRTs0oGdpxyaitxc7H+O75WDsJ2EQEj0KtBsoMdkSPnHHUWtFg
	OGduN+4IzOza2E8I/72mRh99DMKDVReY6WwsYQ4OsRgkUK2fZQUAe9kjaGESJow=
X-Google-Smtp-Source: AGHT+IEHVUgOvZC5v06qR4ZSdg5z91SxCQjaRZmFFrbTXWAQXJcCevqh79ebQvkdQdoiwtpgi1dLFA==
X-Received: by 2002:a05:622a:1e8e:b0:447:f361:e2e0 with SMTP id d75a77b69052e-453743ae440mr10632581cf.59.1723761549108;
        Thu, 15 Aug 2024 15:39:09 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:51:b0:444:b691:8723 with SMTP id
 d75a77b69052e-4536747d7e6ls17819581cf.1.-pod-prod-09-us; Thu, 15 Aug 2024
 15:39:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVYSLjl83g80DtAflHA+YkHVscr0AGg/0bxcoCHwQKc+/YKrKv8EcAyQXWzw6GTjk2kr0xMpdsIBokACw==@gapps.redhat.com
X-Received: by 2002:a05:620a:454d:b0:7a1:d73f:53d2 with SMTP id af79cd13be357-7a50692c4f2mr143357685a.20.1723761548271;
        Thu, 15 Aug 2024 15:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723761548; cv=none;
        d=google.com; s=arc-20160816;
        b=MJ86TICkf9XdgjAv5+8vwL+QFRJ+uKzbuHqQGI7JSwzQYfNBf1gip7mCQAZUFHSLtY
         BDei8WEJQA6zom+plraZjtwXb/rAa4yD/qyYvn6VkQOfHxRphKi3xyhlpqrzia3r6yWc
         HAml7ZtTm4SWNMfWPTxmOzjIPO06ro8bADIrHYVAzgXdLHmTeKDLyk+mxFgisqP0m9u2
         Ze975f6g8pPsW6INdVjLk6QL2CgQTJyKq8g5V/6/gKAnWrh7FG6uKH24uXUKjPExa/0H
         wJ+pvhbU+6za2O5iTxRCb2iPbiF18xRB2drQQAsATCDSHGGm7tFY+UuwUMjyCIJ9lfFK
         kBAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=Jf6UDNErDzF38qgad071U3uatqs3Tnxd1RsXPiPyh8A=;
        fh=dGPo/LjiEtGhIRnIHtz08W2nJ8lNxX0grOeG9xkxc3A=;
        b=bK+cd3ZMfi5O202pbRsJvBDTb/x6MDIpiM2VB9ffSGqRzwU/tawqtIQCC5J73dnYBr
         MKwKr8OQMo/8wXMTqCqlyNrBy0SFECTLwcRdmjc9JrOnEtUEu8WTlHguun0SSQqnV/Iy
         a1q/9nkyZ9xk95B00ATTPf63jNIIfpdtIswyAxIjYPkZWf/QUsq7cYYyTt+B/XjYaAcE
         HMNrmsQ6XaxfHSgewpvAOtanAqaxtg7UjVhKNICkhd01nyNirsieGXDRx3QTGsQRHyvC
         KEApcSkPXT3iWmARsezI7N5UY0OnQJwqTh949/Owxud5ihIN656FR+2fll0tOU+WTOyM
         N/tA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.53 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a4ff1130bdsi271950485a.606.2024.08.15.15.39.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 15:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.53 as permitted sender) client-ip=209.85.161.53;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-663-50x1hVLAOP2ZkA1NVvE0fw-1; Thu,
 15 Aug 2024 18:39:06 -0400
X-MC-Unique: 50x1hVLAOP2ZkA1NVvE0fw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AF4C919560B4
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 22:39:05 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A7800195605A; Thu, 15 Aug 2024 22:39:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A4F191956054
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 22:39:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2552C1955BF7
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 22:39:05 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com
 [209.85.161.53]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-412-l9GZJWjeMXOXJ99oW5WeNw-1; Thu, 15 Aug 2024 18:38:59 -0400
X-MC-Unique: l9GZJWjeMXOXJ99oW5WeNw-1
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5d5c7f24372so912900eaf.0
        for <blinux-list@redhat.com>; Thu, 15 Aug 2024 15:38:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXqFAcZqEYRLKwnD+z785Xfg+2+wZRG7kKcxI/V5zfxEzpCoVKBJlwtplelsF9USTIPUNxb8EfmH9CmPA==@redhat.com
X-Received: by 2002:a05:6870:d8c6:b0:260:71c4:f33a with SMTP id 586e51a60fabf-2701c519f71mr1133558fac.39.1723761538792;
        Thu, 15 Aug 2024 15:38:58 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2700447e407sm582797fac.14.2024.08.15.15.38.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2024 15:38:58 -0700 (PDT)
Message-ID: <dfe37f43-4cff-4824-98a3-03db71574034@gmail.com>
Date: Thu, 15 Aug 2024 17:38:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: emmabuntus wifi
To: Didier Spaier <didier@slint.fr>, blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
 <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
 <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
 <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
 <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
 <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it>
 <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.161.53 as permitted
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

now that i have it installed what would be the easiest way to connect to 
the wifi?

during the installation i had it connected by ethernet so i did not 
connect to wifi during installation.

any help would be appreciated.

Rodney


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

