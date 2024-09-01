Return-Path: <blinux-list+bncBDH4HHVNTACBBK7W2G3AMGQE7CIO52A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3C3967719
	for <lists+blinux-list@lfdr.de>; Sun,  1 Sep 2024 16:33:17 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-457cd21f270sf12675491cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 01 Sep 2024 07:33:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725201196; cv=pass;
        d=google.com; s=arc-20240605;
        b=RbUpzEKm3S0Gs50nStQ0bSBJNQb+AuGjdLHPErMsGxk4f5JG2/HsgC/ccHxU2W4zmD
         P3+lXBl0+czJtUKrNOFDIhGYfgCQDUc51Z/Ne/DJeE8wAxmbgblh1QeccdtGSoc1ia6Z
         ZFze4UySyZGkOOWULKpTcGPhVAKb8whCppunpFG8ExyWox/A501iT7DLS6orgSQ276QZ
         gubYT+vR1jp5o1IhblsJLXKVZ3V4xOjUl3bMmi3Gq/lphI84JkCKVpIv1slwdQZCQL4B
         URvJd9ss16UnQWML+5N+awh9+GF4rPPVhLjv5Ie51pNNCUPW19Gpam3T9Dv0p82aeerx
         pX4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=BdkFAcreFnlXin7sqiM5Tb6pp3u9utHsYa54sKVpg1U=;
        fh=6zL5skloJulBHITRtsAe3TuVYxVl8x9TNYbSkblIcn8=;
        b=JmXmw0dLM01BfJ4HKZjzV5hJADbLMB86+Fkt77RWsSt6Qat/6iRfQmd07i5+yhn5H4
         aGkn9xT3i12DuVKlEZJTJ0W7kaLNnRUm1TZa6QB0zZsU68zOPDo6wNT/HXReu2hTIfsz
         ccs4Z2CAQMgC6ENQAYtgjRylOSe+Io2VB7gJw2qPljhZe7hmBCn6s35XjFZiEIbtAE9N
         jLdpptaVYGoy1KRDuTemvHFl/57EGMDL1n8bLyt/sns5cZa+F0wK0u89iIBbfjF3WSSK
         Cfh1YAcY6hiYe5U8XtAvymNi01jmzPOAO6qk/Rp1PAMn6+RYsNuwMibEISILWgqqAwiE
         Zokg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of edhoari.s@gmail.com designates 209.85.214.169 as permitted sender) smtp.mailfrom=edhoari.s@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725201196; x=1725805996;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BdkFAcreFnlXin7sqiM5Tb6pp3u9utHsYa54sKVpg1U=;
        b=xKcJUiDqmx12KM5UJKdEgJ69djd7JzEsSl1Pi2zR7eDuMCieeaAR2sAn2pnKZHq4ro
         CA9i7ZktII/aT66BPC7ztuWoRy3eXKOOQGOze6GGxyWhqLk7jGCWVN3uKY7zmoNLWd9U
         hnj15Hh+D4S7APi/a/4OMsxA4MM9yrs8mzigZCcp8qAAMCt4+YpkVTa9Yl8dZoP+i/2j
         udFHOjAsOncbN9KASATo0rAiXNemto4k8v507leJRNdBprkqrSNyMAJ/wnkYJm9BOI9T
         Y/kQHq+IUR6oZy84/m0ZLGr6bv3ZNCkixHayr9YxcUzrMZZ7ozaH+XMjLgO071CAD4xL
         1MCw==
X-Forwarded-Encrypted: i=2; AJvYcCXuE5+voyPVwjPltCMbVDZxOnpqC9dfvIpUNOboSWoYdPFpD4Gdgzwuamp2O+S4vF6/F3flLw==@lfdr.de
X-Gm-Message-State: AOJu0Yx5qtFO49cnPAV+2aWUZJn8VTIRN0KY2KspdD/g8QcJJnV1esxe
	ZTuZtiFVA/g9vKSEHL3maAdjYlZhsv4d2+WnF7M8pMC/+cUCOZxeT7LVWw/wjPk=
X-Google-Smtp-Source: AGHT+IEF3TccLnjteE6zu9ifPuyEANjZKATVFqCar1fxtzSwo+h+9ZRhf8YY9EBvjhlIlD8UoSt2Ug==
X-Received: by 2002:a05:622a:58cc:b0:457:c74a:638e with SMTP id d75a77b69052e-457c74a6627mr40283931cf.38.1725201195631;
        Sun, 01 Sep 2024 07:33:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1812:b0:447:f242:15e1 with SMTP id
 d75a77b69052e-4567ecea28fls1685671cf.1.-pod-prod-02-us; Sun, 01 Sep 2024
 07:33:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUvNDDFTM9yHu53tHJWKk5S2+DzFw6mdLHA0aFALSk3M8fwTT2IcjMzokE9BqV00oC31JK19VMG/dZC8A==@gapps.redhat.com
X-Received: by 2002:a05:620a:1909:b0:79f:197d:fe88 with SMTP id af79cd13be357-7a804187315mr1661862985a.7.1725201194490;
        Sun, 01 Sep 2024 07:33:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725201194; cv=none;
        d=google.com; s=arc-20160816;
        b=GkvbwqyxOFZFAyvT2gwPEDHx9ob4YzKUjzMOL5jqFFD/TksKBID/M0qCx/i6nLg1CC
         FfSUOJzzTr6c8e8zZHwW9TXxFGB26FS+S8NX81suMS4Pl/i2t7GPE2aP6Ao+ksX6ImGv
         q+//6U04hafqbdvlFzQMpYAfvq57w4aKXmu5IULFPKoiko5IuRGb/0+EUaM4y4EU85/9
         Y6nbzdlps1FcCk/2+9C/H24nGFddXW3d58rejEXM0/rUMSgZ1FEFARKLVWrOIrGQdVuu
         jGom2mo9tHvWM+4OC7DgVvCDfSguiWoRAZVqPRPQ2okrh+AN/7/4KJ4SPgzZy6j0Qao9
         9ZfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=GTBMto5o7iG1k/LJWdczRLP0CV+aGpd3nenTcKz4eBY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=o7STlemCnxt8txfZ9urtEWtt0h4bhmIz4N9FdffeHiPcT/q6QHBPpaBsMeAMBopJ9x
         k2t8h9ztV9E+8B5+vrwQeCNy8bbc9veqYjIWzsMfVImZuR5zWaOCK7e6xgyKjCwYc5h8
         yUmPUdudfXC9Fd7/7GttK4nvgF0+D+Zc3FiSwL0ttL6N3ayE1hJwb50ML3XB77iomL91
         D2TkaXFw7JMmGhIAzPvsdoGfsFHkEStt5IQXmgdgRpyMA5ob48Njx3Is14GZseW8oinc
         ZXteWhhEwzyV1S/dDWbM8LeFtThlQVj/MyemsBo8UIKA82R5V3pSsrTuHcjQJxxsAz8J
         Iltg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of edhoari.s@gmail.com designates 209.85.214.169 as permitted sender) smtp.mailfrom=edhoari.s@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a806d54c45si885694785a.254.2024.09.01.07.33.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 07:33:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of edhoari.s@gmail.com designates 209.85.214.169 as permitted sender) client-ip=209.85.214.169;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-194-OR5GFms6PNeM-gdwiKmLxw-1; Sun,
 01 Sep 2024 10:33:13 -0400
X-MC-Unique: OR5GFms6PNeM-gdwiKmLxw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 444F019560A2
	for <blinux-list@gapps.redhat.com>; Sun,  1 Sep 2024 14:33:12 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3E7461955DD8; Sun,  1 Sep 2024 14:33:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3BCD51955E8C
	for <blinux-list@redhat.com>; Sun,  1 Sep 2024 14:33:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B8ABF19560A2
	for <blinux-list@redhat.com>; Sun,  1 Sep 2024 14:33:11 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-349-__uZ3p9ONai5mwoJkvch4Q-1; Sun, 01 Sep 2024 10:33:09 -0400
X-MC-Unique: __uZ3p9ONai5mwoJkvch4Q-1
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1fee6435a34so23649345ad.0
        for <blinux-list@redhat.com>; Sun, 01 Sep 2024 07:33:09 -0700 (PDT)
X-Received: by 2002:a17:902:ebc4:b0:205:60d2:106b with SMTP id d9443c01a7336-20560d217d9mr16896895ad.34.1725201187243;
        Sun, 01 Sep 2024 07:33:07 -0700 (PDT)
Received: from [192.168.0.104] ([103.121.18.22])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20551cf10dcsm19657965ad.14.2024.09.01.07.33.06
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Sep 2024 07:33:06 -0700 (PDT)
Message-ID: <cc05931d-51da-489c-93d3-b8a831598ace@gmail.com>
Date: Sun, 1 Sep 2024 21:33:04 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: Edhoari Setiyoso <edhoari.s@gmail.com>
Subject: no PC speaker beep on startup anymore
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: edhoari.s@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of edhoari.s@gmail.com designates 209.85.214.169 as permitted sender) smtp.mailfrom=edhoari.s@gmail.com
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

Hi list,


I notice sometime ago my PC stops beeping when booting. I know it's not 
hardware problem since running debian ISO installer I can hear double beeps.

Does anyone know a way to get this back?


I'm on debian 12 if that matter.


Best Regards

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

