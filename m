Return-Path: <blinux-list+bncBDYPVTOXSQEBBIWXZW5AMGQE4R5ZDOQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E8E9E7AD0
	for <lists+blinux-list@lfdr.de>; Fri,  6 Dec 2024 22:24:52 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8f8b9d43asf1742096d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 06 Dec 2024 13:24:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733520291; cv=pass;
        d=google.com; s=arc-20240605;
        b=irCtNfbcm8UIzj1zUEjoQ0lygLuQIdiq3jE33kSlm48r2kUP3ePkgRe+2XD/GuADhs
         w6YKo6hVaXMy3No0V0rnHsLuKCVj+AfzlgsM4f+D8nzxkzt2Ht/kffBmKNodIV+saMAn
         iLPtstO6zGd5xFev0f9RfmN4iVifmXUt8Xe42bSnQdtr9zzCDKgvqy1ERleu2Me89Usa
         P/hu18hJ3kxXsMShq0YoLT1IiaSPNTWkxLBC17xGm0LinLRU60HvtqJd5p6pUEqhdVgJ
         uReds1tHUw403DOLsAb4RaaYSIqkF/h15c6EKVao3u6pCr82nOTHD3mle1pL+G+QuWXE
         hgPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:cc:to:from
         :date:delivered-to;
        bh=a/yP6+/zM7lropa4wzWwjP6NjQb7SFnGNZYbhinC5jA=;
        fh=lpF18OrzfcgBW7uNU+0m0fbhlcLkQ/M5msO0RLXPYlo=;
        b=KXBO49Tq66XX1h3Ui+h1Hsen4soIJxhpPJY7a8CBA0hRxYdAFF16nc/cfp6TYVES3Y
         Dm9LUUmf4zBBsx0RmqxIlEaMw1UmlNSYuZEFKXmiuaLLmZ+pt6FeHXyesM6dGoXcBRIJ
         mcmlycKOXfdHA0HID/XcmETGbeAEMT6TZ9dDFojK9AzzarC3MItl7pZBbOGB8GjfQ2hE
         P46VJS0LEMQZt4Yv9l/VMRKdikVHyMIcLYPTqYmu8QYI4MRo15RCIzXzD3GGqHgSLM4L
         AnRpTKyhQQiRUpFb8E7PUluNrHwpM3wuJN3l0FmPL5xkU2AJmevtRzqt+7ShFRPxhOcW
         EOmQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733520291; x=1734125091;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a/yP6+/zM7lropa4wzWwjP6NjQb7SFnGNZYbhinC5jA=;
        b=giAXoHWCds5dW5uwSy2VgCg3ztXIJMxsSnViud83KSKsccWPVyemD2S6HFT6+K4Gpk
         ZsIV8b1Hk8DBfrZm2aDkP0vWZSaUbZZg638YrlGBivs0aEc4/2MQlt8M2zhGK3bzvxrf
         sgRRMQIZRWmEnfL7ME19NYzBLOLemaxbKfVepj0gnLzlSjmuexTA7trcuLGhh9/VPZt7
         OCi84fH9n+qMUaFWM1TcI8kd/xHXpRDA28t7agG4+/RfwJarCRdZUpYvbJd6RL9EjD3m
         YKxQ+mHHD07BHKvoq3G26ao3T4SDZfnzsruTV43c+Lr2rTY5KOpiklJwroqZSdC0mJ51
         mtXw==
X-Forwarded-Encrypted: i=2; AJvYcCVIYumkFoUuWbSNTw7VAupzOGf/+e2pbvqCVWxNfctMXErT/QahgNlv1AfhBN+xtbBNQWrrRw==@lfdr.de
X-Gm-Message-State: AOJu0YxsnnVqxy/WlvfvUK6V31m03vJxEV7sMK0dAPKdEZxOriwcciK9
	OsxUL87hMlNxqSWMqmD+8NhEjWv4XAorKhDC386YCer9wHcbJTexLoypRJ0lFnA=
X-Google-Smtp-Source: AGHT+IE27+ukUlJZ8t/vI6oWl6dB0PYhs5BA/BOfYHxmsgI9L4mzG8/yu63K6FwEPIgT7GhRycmmQw==
X-Received: by 2002:a05:6214:2602:b0:6d8:ab3c:5e8 with SMTP id 6a1803df08f44-6d8e7144663mr70439466d6.29.1733520290939;
        Fri, 06 Dec 2024 13:24:50 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:230b:b0:6d8:a2cb:d941 with SMTP id
 6a1803df08f44-6d8d6fb8bfals30419916d6.1.-pod-prod-06-us; Fri, 06 Dec 2024
 13:24:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUKZVkaGC2EeA172cXb0LX50vUeTVM+qYC1ed90Cs37wvrHFSua8qwtlWiXTdLsdHGRbMPi5gpMz+JtQA==@gapps.redhat.com
X-Received: by 2002:a05:6214:2126:b0:6d8:d5f6:8c75 with SMTP id 6a1803df08f44-6d8e70d5e6cmr80976326d6.12.1733520289538;
        Fri, 06 Dec 2024 13:24:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733520289; cv=none;
        d=google.com; s=arc-20240605;
        b=ihEorTLIGfbgBSaCPA4SnmJNQbyHKrbmekr7OFi+uzG3uT5vAlpV1BQ9GBLa9ZrxJg
         y2xBSHd6MlomRM0ouDggP3JrYUaoK2LwBCF4fV0nQPCBvUjQ3jagar5AxazfvOun6R8T
         OpX4/xpDgpVDKcWNEbKIo12qCQvJOoQk+wuxkaCEDvsgAH0dIkUhmB1KlT+HvhZV6NbT
         shq9Bk3pqTZUkhM96UwobpXhN3kXhHSzs9mSjJMZrg5H27D3NQPg5IHQWFzkKr1q0BpP
         HqPKtXovPrq3e/1rmLfejz7ue+/kXZjBm9D5CWkZmOYYH4S/cC4PYUHvJf9Bj8xQQeqD
         TaQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:cc:to:from:date:delivered-to;
        bh=nU9+AI/7/4okh0iCkni/aVzQ9jMf04sXhX0kYODXelM=;
        fh=4FJgF8YBARcpJHpY9J3BKoh1JDyuBhwq7wN+e5DvcgE=;
        b=cIG4RApY7uMh/wkgyRw+aUpnrEEeq4tz6TtdFe7IyTmlNPLV8CKqntmv2mvZmanCel
         bSApLYDiMcCX1JRnogPBMMPL8vfEiJmmPDKx5JWnCDW1FhdqMn7ICSDaKX00r8ZRQ6aQ
         oayWdtHUOTKsFPUVQzaO3da2Y7rbRvce2KcYSTsi+mFcnLxFo1IeMnGymIs3zdjLI3vy
         CHHXA2aqy+U7ikqeiRGIUbzcPy8PXeWCMU1kdwZVWoylZljCyHYzndSsL/6J7TV77oNU
         IaVDbwaa/1LcmOsM7L7TrhHx8SuF/ik45L4/Xwwvp3hM1LwWGZK3FkLn0ZQ+oWqG75E/
         9JAQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d8f08d6138si19705966d6.363.2024.12.06.13.24.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 13:24:49 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-423-JD5txSm4O_a5p0W9JOWKBg-1; Fri,
 06 Dec 2024 16:24:48 -0500
X-MC-Unique: JD5txSm4O_a5p0W9JOWKBg-1
X-Mimecast-MFC-AGG-ID: JD5txSm4O_a5p0W9JOWKBg
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 73E8519560B6
	for <blinux-list@gapps.redhat.com>; Fri,  6 Dec 2024 21:24:47 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6F5F43000238; Fri,  6 Dec 2024 21:24:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6D3C6300019E
	for <blinux-list@redhat.com>; Fri,  6 Dec 2024 21:24:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E23171954AEC
	for <blinux-list@redhat.com>; Fri,  6 Dec 2024 21:24:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-158-O75joDTQNha-CrLX0RwLIg-1; Fri,
 06 Dec 2024 16:24:44 -0500
X-MC-Unique: O75joDTQNha-CrLX0RwLIg-1
X-Mimecast-MFC-AGG-ID: O75joDTQNha-CrLX0RwLIg
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Y4kmX3Dg3z10Fs;
	Fri,  6 Dec 2024 16:24:44 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Y4kmX2qcPzcbc; Fri,  6 Dec 2024 16:24:44 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Y4kmX2lwCzcbV;
	Fri,  6 Dec 2024 16:24:44 -0500 (EST)
Date: Fri, 6 Dec 2024 16:24:44 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: chromevox-discuss@googlegroups.com
cc: blinux-list@redhat.com
Subject: revised tdsr startup instructions
Message-ID: <dfc63467-2b77-c177-0edc-2fd61eaa529f@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: _jQOzOqJt6-j4OQLpS5plMocsw1NWnuu4BTC9YGKUtg_1733520284
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Ooyim5pvNE2rJ7LkVFJreVpduSwumUXyhtbie_xWi-4_1733520287
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

If using a chromebook with tdsr installed on it:
select shelf,
select terminal,
find penguin (after linux is installed),
turn off chromevox,
hit search spacebar,
type control-c,
type ./tdsr/tdsr <enter>

tdsr should start far more quickly than letting the computer wait for
minutes while some
odd process in chromebook linux finishes up.
With this procedure once penguin is opened I've got
tdsr to start up a few seconds after typing the control-c and that makes
me more productive.


-----
Jude <jdashiel at panix dot com>
Q: What borders absolute stupidity?
A: Canada and Mexico.
-----

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

