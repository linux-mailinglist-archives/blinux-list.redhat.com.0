Return-Path: <blinux-list+bncBDEPFPWCWMDRBEUKTSVQMGQEFPNPXVA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2597FD2CA
	for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 10:32:04 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-67a3308e24csf46621086d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 01:32:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701250323; cv=pass;
        d=google.com; s=arc-20160816;
        b=bpujLQ3NPAas9qFwwOnL3WEqpcp0HBSg8OhLkLwMt8MJMno4DlsRyulSF+Te/Dq7a+
         /QE4yOI/LRKHs0KNomdxt6TI1qfvPImj2Ol0RIcidXq7zZNFoJVkJS4AUWe1U69jRBOe
         O4E6aXqcNhp3aqw17cb+VzdQTa8idw7E7MAJXAO5H1S77AwAaESJSr3fsBV1OsMqNuju
         cNrrp6icnnCkFuaPWgiaZhtZ5Mb2NDEkLm2aAtIMQCOkIRMA5z3QicbCL3LP3pVCSVgs
         MKIZQCCKiR7tGwxYk/5ZeuX2oTthuP+ojbxQlao1klChCjZrHWGvf+NxgvlhyrYdv9hT
         x6eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=l46hsjmmO19qUOKPyjIvpe3Iqw8sAhz8eL1XIdqgN+k=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=tdUfggF1bclQgVTguZdTan1yNTlbzOqKPYSwHq4PcQZyMWb2pOiu48keIn/R/XioQ1
         vnh78zql7tlmeZu3peCpUJEjRW1f9CL5xzWsKn1lX9HPW6y3Z5QBlJh7jfFSPFlxZJ8r
         Qe51VEyPsiplk1MU7Hyvl1OhPJ6+fGKovRuYnwqL+3XXthKGrYV2ctJzq0yNdx9JFJRD
         RA3HuoS2oxipQWa1OHjExm9stRBDq2cEKVTnw+qPsXVd2sI7XznFA7HmNLWO+xWXX/mS
         AIktpoiwZiurmWo88WDjQ6jN4WUI+Zv5JvqxByvuI0+06qkbExDxjtKSge5eC75Meklz
         AbaQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701250323; x=1701855123;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l46hsjmmO19qUOKPyjIvpe3Iqw8sAhz8eL1XIdqgN+k=;
        b=HoNwdSc8v+pkOAaEgB8gzvubI+7W4lBki2tlQHUkKx0mD+rTW6M6DMOQ6NoAUKoF64
         J3TDb9G5GjYd6AqAKEZbSCS8ouCKYEn8Uz5+6+v2f2kcEjL18WfDgKNwB92ZE81cEAIE
         eWbkcHZDWlH5PMuIJpQ7bkarhj7R6upulAOFCaOBgLpoO9K4rAIEVIEr+7hIQv9WXH6S
         maslJRARtdeSIU0pMqChvTxGWWaXi0Bc1fEpXkdmqW0bL9f5ZzGOK8B65SARtVt/6AhO
         SnJHbPVvV2d5mWYZbrsPl0hLF4kZh/pLf+tl7LjQ/9txXl1KMMIzJx6DxsOtIz8Lbnbu
         KxSg==
X-Gm-Message-State: AOJu0YyWuIWdBSR4yFzclyc7maIKMb16j1cHSOQPo/i5JpldOjGaHoMh
	6fMpl8Y0v3T70MyGrukDAAe/jg==
X-Google-Smtp-Source: AGHT+IFeoqlED3aqUspZtT9fj65i30NwVrrlTu3uwZTQC5XLQ0mEGY3oqtfcz8+CaFwJfIzfjuSLxw==
X-Received: by 2002:a05:6214:1144:b0:67a:52c7:b189 with SMTP id b4-20020a056214114400b0067a52c7b189mr7202126qvt.49.1701250322948;
        Wed, 29 Nov 2023 01:32:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4b96:b0:67a:800:69df with SMTP id
 qf22-20020a0562144b9600b0067a080069dfls1300726qvb.0.-pod-prod-01-us; Wed, 29
 Nov 2023 01:32:02 -0800 (PST)
X-Received: by 2002:a05:6214:5603:b0:67a:e8c:664a with SMTP id mg3-20020a056214560300b0067a0e8c664amr18952944qvb.55.1701250322053;
        Wed, 29 Nov 2023 01:32:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701250322; cv=none;
        d=google.com; s=arc-20160816;
        b=pmsp984fZMHOACAfj2VW3De9couiSsTuyaSveuZVQYWyN6sdsQuz1nDdGLr+5d8hiY
         jTTYv82pBgJ0u9tv3O02EVT9eJ+5guXA0fA9jztArOM8M3wTsSMbWwttUJdhC69hCvxn
         IokMBel5X/ko+bRFxWWguKGZgwknlIFgNc0qRlWh1kf+5LgCMRMqWZf2Iu2RVTjO5XeR
         KpBx2hYQfHB58LQs8FPaNVSBJf1OsnM5MBLlnX+ll/mpzoMjWFEFWTfzDvXU0Ub1HTkl
         JvFFsye6yHcTXB+pRiRB0f+ceQ00+lhDIiDh8V3uSV1cGggAp6ceyh/lOK6lfnMQaHj/
         BAVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=uXI4PdULgy7r6g7dFPlgfWtIeg+nuyEbXn+7g9ooZhg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=k2YWiWwww4hXbhxeIHIJXgWRvISKCnnFsPkfEzo2kyXweFi7mxIwbCNzaq2KgRHPIy
         p+RbL7m3xKGV/49rXz4W7ay9rE1rq3qAodFTdDjNIWKSJGPGJcWU5NztWD8HUCKJlB+R
         a5IZ4HBaBS2rB27w4vkDXTd22nJTRamVrJRMQsvvP6Z5EsEJl3hCIX/leq9jRp0GiVuc
         kTRHtu1NE682dU/0j0uiLGhALvdXvOLBcexQwED3ug6ji3gvbYOQ/IVd846fz8VGziVz
         PfWP8uQ61t1MrgFIUr/AJ+U1EAcMpNzgdz7a1JjwmgaQ/go4hgPkYJfO4L43Bhkw1cuI
         L5Aw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id fi5-20020a05622a58c500b00423e5d6a31dsi1440842qtb.337.2023.11.29.01.32.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 01:32:02 -0800 (PST)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-281-SiOmuCdJPX2wUJUcRtGZvA-1; Wed,
 29 Nov 2023 04:32:00 -0500
X-MC-Unique: SiOmuCdJPX2wUJUcRtGZvA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6759729AA381
	for <blinux-list@gapps.redhat.com>; Wed, 29 Nov 2023 09:32:00 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 647F520268DD; Wed, 29 Nov 2023 09:32:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D44A20268D6
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 09:32:00 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 424B4852AD3
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 09:32:00 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-210-ZHAcQE2pPX20PccN8DgoSw-1; Wed, 29 Nov 2023 04:31:57 -0500
X-MC-Unique: ZHAcQE2pPX20PccN8DgoSw-1
Received: from email.seznam.cz
	by smtpc-mxd-54c84db65d-v2mln
	(smtpc-mxd-54c84db65d-v2mln [2a02:598:64:8a00::1000:a18])
	id 46cc8b755354d82f47267a69;
	Wed, 29 Nov 2023 10:31:56 +0100 (CET)
Received: from [IPV6:2a00:1028:83a4:109e:d9b5:d28f:586b:59eb]
	(dynamic-2a00-1028-83a4-109e-d9b5-d28f-586b-59eb.ipv6.o2.cz
	[2a00:1028:83a4:109e:d9b5:d28f:586b:59eb])
	by smtpd-relay-5668cfd46c-cxfwv (smtpd/2.0.17) with ESMTPA
	id edc69a3e-bc47-43cf-a8fa-fbeb966f9b39;
	Wed, 29 Nov 2023 10:31:54 +0100
Message-ID: <81e9f0f3-7c69-495c-9967-f52c31c52307@seznam.cz>
Date: Wed, 29 Nov 2023 10:31:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
Subject: RHVoice-test
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: seznam.cz
Content-Language: en-US
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

please how can I use this feature? I tried:
RHVoice-test -i test.txt -o test.wav, but it says me Cannot open input 
file. Please can you help? I would like to divide book to the chapters, 
I will do it and that texts convert to wav like this.
RHVoice-test -i chapter17.txt -o Chapter17.wav

Thanks a lot.

Best regards

Vojta.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

