Return-Path: <blinux-list+bncBCFJ3VNT5EIBB6VCWTJAMGQENZOKWTI@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id letsAn4RTWo/ugEAu9opvQ
	(envelope-from <blinux-list+bncBCFJ3VNT5EIBB6VCWTJAMGQENZOKWTI@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Tue, 07 Jul 2026 16:47:26 +0200
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F00571CD17
	for <lists+blinux-list@lfdr.de>; Tue, 07 Jul 2026 16:47:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=google header.b=c1nbGRjf;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of blinux-list+bncBCFJ3VNT5EIBB6VCWTJAMGQENZOKWTI@redhat.com designates 2607:f8b0:4864:20::747 as permitted sender) smtp.mailfrom=blinux-list+bncBCFJ3VNT5EIBB6VCWTJAMGQENZOKWTI@redhat.com;
	arc=pass ("google.com:s=arc-20260327:i=3")
Received: by mail-qk1-x747.google.com with SMTP id af79cd13be357-92ac0a54110sf492952785a.2
        for <lists+blinux-list@lfdr.de>; Tue, 07 Jul 2026 07:47:25 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1783435643; cv=pass;
        d=google.com; s=arc-20260327;
        b=TDt6odlTLpL/YYYsRpwIL840YukCi5c0UpCcUAIpPVmr4AXJBi1ZCOgIPsm05r8Fd6
         EvwFSYwx8sT1QKqqhHbxzR7ovF9e8TnSbva6T8msQulLTw/sSavnqugb0BfBImHnF8j8
         bfZYmiE2XXdiSk1ZhPy9Nan2+TeG+fvO+filDFnQJ1sQnaKP7SFeXFLCx0QCI/u6R/Ep
         ZLXbLbox5q8pDtN/c9yGDqfoD+LWF1gmbHFOk/eB0+CctNCzaN0ePjGkHLRDEzJmnrYq
         e5sjc2r0h92MC03yXwlAt1Fe3vaajPsdCPsbvAkoTJ++nKu/9Nmr30lEZs/TTvpqENWB
         nBsg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to:sender:dkim-signature;
        bh=cea3ieEUvins2Inqk4EMTjuZ2dILEp2CGorpk8h192A=;
        fh=7He4Li4RyW+H4m529co4GyAb26PjVkjMcJOe655mO6U=;
        b=KNidHdqXtVxxlaJ38qjhDpI2ltB89FbXXDGZx2eWXJDsv6FvTK+EdzGP0aBPJ+thuK
         16o5O7vigGwSOJNf/5omcTHpo0DyjQntZGLh24G+rZD9eEuHRQYyLdwFGZ7OrFN3lM4r
         9ExaKybBHnXfuESfgQhjBGd7bBFYbzu0bC52vWGHUars81G555xUqUHSl/Knn0X8vj0+
         cHVtCw63EqgXuPcu+DoAxMnSrx0RBpctN2c3D8Cw2yUlHbtz9EVkGxh5CogB/SBEXAMh
         WwB66slXQtfMQ+cKedeGIA7uaRE+Ii+P5Bq+4CVJNXxOl/vKIGJmUCVvGpNNRjeVvTrG
         IJyQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20251104 header.b=ebGR+BRF;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.42 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1783435643; x=1784040443; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cea3ieEUvins2Inqk4EMTjuZ2dILEp2CGorpk8h192A=;
        b=c1nbGRjf8pDZ0lvbbrch3ofr63g6I60ZjAeAyjqcBGgroIZQOXewio8t6cv+mCJzis
         tOd6HZFKmtrhGl8RL23H0DK6SgyRKJSwqlNjyGjfIm5PVXgh9VTE68rtdM7AnMKUcqj5
         3bf8U8TEZ/x4YkAbDWq1wfjdqsIU9yh5JJHo5YNO8FA5ei/uTcd3Ow7Lv9AK/hlgM06i
         4FJpYPlZlYS1sC0Blf5oSqeBE3hEYMSQ2WoShQ6BeWpxjX0tHly7NN9m0QURvUsrz/27
         x0wASv9g2NAg4D2UUGHgFjuVUQAesdsRafRR4EQ8Lb4XQGx8ZysJSFOolikYf9iyUpmG
         bSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783435643; x=1784040443;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:x-gm-gg:delivered-to:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=cea3ieEUvins2Inqk4EMTjuZ2dILEp2CGorpk8h192A=;
        b=Z6tR4oCwgIHsC7UU88dtg4xQh7LBfX68kE4zn2F2HGd+ufSWUZrClEZ9KLiW5ugBH0
         vRqZJWNYny9qG5yJSmov1m0LHr38qmrF5fwZ8tI84x1ZNG9Bs+dsVbxMvBMYoy1Yjkl9
         /o5KW/We3O3S5osj03xX8F+M2KZbJ/7J4u1Yays2i4PtmtVXzfrpJtRUM0KmZojbE5z5
         dZYvAGBRliMQMVMIqgRSAEhbijOICy9zMw931cNgZHejdfDDZVTmIatW7oEJLaiFtuX0
         ECirF0B0F35kuf2tn/v+naNEJVAcedBfpau5BhVx+tSl3NFst4Ud5R7ZkuEZWKSGukgk
         VIkQ==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AHgh+Rq8AT4ugrHEkw/l45PY6wOyj8ycf+XAollEw3uO+kFIaozIVJpoJdffBnu2HViYcElqSZHbZw==@lfdr.de
X-Gm-Message-State: AOJu0YyPhKaPdWD2tfAYfFzn45Z7ErVnLfIO43GYs/2fosFsfmKbgs8e
	6th/JY8Cxi2Ci+qmU038CG4/q0VgC0PshTR2lv/Y0sTpXGAYwjL7/9hQPhEm+u3iYSs=
X-Received: by 2002:a05:620a:84c1:b0:92e:6a33:7118 with SMTP id af79cd13be357-92ebb5645e8mr650162785a.30.1783435643146;
        Tue, 07 Jul 2026 07:47:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h="AX0PUUeoF50Ml411i/SG+W3ZDQOaYvp+fQoh11OOqR3i7Cg7Fw=="
Received: by 2002:ad4:5c69:0:b0:8f2:509d:67cc with SMTP id 6a1803df08f44-8f3ea2b1024ls137798146d6.0.-pod-prod-05-us;
 Tue, 07 Jul 2026 07:47:21 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AHgh+RrYu3NvUY56amGgRkXmW3JLa3P+7grU67DQxtipDNA4vC7Zn8zCJ2iTQwSuZdP286iHJunsJFiRqCeqRQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:6083:b0:925:56bc:b8bb with SMTP id af79cd13be357-92ebb528c02mr598143285a.9.1783435641287;
        Tue, 07 Jul 2026 07:47:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1783435641; cv=pass;
        d=google.com; s=arc-20260327;
        b=N/Ltkl1A9DEXS4durI5bjGeZAYhTpjmqTJnk1+ZyWCK053NLKqAu65r9MlpsJdSD8W
         LXGLFtag7EEr9isRziDrth5iCputPEce2DgS5mqqoQq2MwTfBzzNDbuTFzPow7IE0+AL
         oCHtrBH8I6RYcTWBcIgQg32oohoKfXx//xs0WFX86ipOu8XIXSeG1P4anqJAs1Pb94wo
         u5nGlzyuay/tYegUstZs1Y9YLgjdgbo7mxytl9LnoY9cPD7xjIVpsYmNUSDHTtQgmGJk
         TR93BJCBH9DRuyMeHfEL8hxv+kgFIGwHPte3EAChrNvwnlEjLy+YiFiekA+U3o+VYpKN
         CkjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:dkim-signature:delivered-to;
        bh=Zs+iCwgNyZCrwSwOqbPIPkXWvS2CONxlt49daXsGbUU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=kVEfj1dKirrrx2CkGezQy6NaY1t5dfzJ3NGoQ0ab7bc7heRR8E7RF5UfMf6oTtngUX
         HwDf1Xc5+9rS4qozpKe3fNciU7P3cSRfe9FAPPWElmIbvMGnZAv0DIV6kaHzzhVxZMoN
         VJXfoAQA1ZMUqonIPvRbaCIlLWy5gBh5exDqeHCPVDyX3Ehg3HVYVudGI6LKtxGM9HaN
         HP8DsfAaKlPgHuUltw01EYCeYOiy7yrodjA7uxEmrF2BHzHz2Vk6Ubo5y6+92fCZr3ti
         6bUwA0I9ezTpB2e2eulUU13eqcZ5j22xq0VTtyTzkXDQ03ksmohnz9kts44tZ4mInAz+
         zz6g==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20251104 header.b=ebGR+BRF;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.42 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-92e90d189bcsi1287463785a.356.2026.07.07.07.47.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 07:47:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.42 as permitted sender) client-ip=209.85.210.42;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-557-ve3FMYkyNpSyH-WytaYxQA-1; Tue,
 07 Jul 2026 10:47:19 -0400
X-MC-Unique: ve3FMYkyNpSyH-WytaYxQA-1
X-Mimecast-MFC-AGG-ID: ve3FMYkyNpSyH-WytaYxQA_1783435639
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E58AA1954AF4
	for <blinux-list@gapps.redhat.com>; Tue,  7 Jul 2026 14:47:18 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E0CF43000C15; Tue,  7 Jul 2026 14:47:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DE2BF3000C13
	for <blinux-list@redhat.com>; Tue,  7 Jul 2026 14:47:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6B9121801326
	for <blinux-list@redhat.com>; Tue,  7 Jul 2026 14:47:18 +0000 (UTC)
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ebGR+BRF;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of dcrone215@gmail.com designates 209.85.210.42 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1783435637;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=Zs+iCwgNyZCrwSwOqbPIPkXWvS2CONxlt49daXsGbUU=;
	b=Q8FlL3UVI1sB6XD5CRLBfbIUjUNADJ7A30spQ6YCdgER11uc7pYR++QNfbcbY8UrBUbvfO
	82YY77plc84nJk406h0rq/+aXeecBh38AKLjPSoBI00Cr0WendH5gcbteCmS3qD6uVLDI1
	WXOFIMDsfP2Y8MqkqLxV4N8QxCs7bb91dq5kLMzCk0KmTKO8YfpD5l/EkiBdSUICkfJ95a
	8tEJABvZY+Y6vbhVncwvWH3r4c1poTSDRY3lNw9rnl+wmTCCWFkqnMNWVweyJVCzSUgJcT
	Kt+TxoS/wmyz4uwxjC7uI5rrkk09tyVsrWUXp2rzUe8lb/wipSczKv5HCdF5YA==
ARC-Seal: i=1; a=rsa-sha256; d=dkim.mimecast.com; s=201903; cv=none;
	t=1783435637;
	b=Bs2kFuBejQ+yzVkBeNEKvr8K5LOS6J6nSljKF9qUI7y8caP95VKGDxYgNnOfLrgTGTmt5c
	VdJKBTwbjjbfPGJHw2mKnPfB6m8lOC73NDraEILuCHOoUI8EMO3UqRxalGSKr9oibywCfe
	nBxFHC+Q3NICxC1LzyRapVXiGxnY631ESVdarfuVE5NbqCViKcvinxqZwM6G0ozlX+qM2J
	VpufgDD8s0FPfu1OUWngu+sxBGh5GtlLTJ3MMH7EXLmdBfWh/r6Yy+P7dw//LPIYkrtvE+
	8YJa1ib1az/R1KjtmkCGwRBbiWejougwO3h9px1eQeapYU1NeGz787rgJzc8kQ==
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-641-NhUuRbI2PA6bOQ0A6-KG_Q-1; Tue, 07 Jul 2026 10:47:15 -0400
X-MC-Unique: NhUuRbI2PA6bOQ0A6-KG_Q-1
X-Mimecast-MFC-AGG-ID: NhUuRbI2PA6bOQ0A6-KG_Q_1783435635
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7e6128bd9b3so1946214a34.1
        for <blinux-list@redhat.com>; Tue, 07 Jul 2026 07:47:15 -0700 (PDT)
X-Gm-Gg: AfdE7ckrK5ogi2R0PFUDAyMD0YiJ1orKCB2HHe0jOKaj1pobFoG+lJZppFCKUcAODzo
	ZVCMZWc0Q/85lFrIObMHHT8yyXGDWWDFsDYUJPe8J8e+ApRnCdMVmM+N+lr/UmjteiimCC3fk+P
	FqwKs6HiBKR42G4dmIXDiGxy25xxGcsOd9svYAhuu764Z6Ivs2fBlsrUu/vmlGdFzhSdQ49wofb
	gZdWd55aZF4hnK1KDnRF2NXvg5mPo2odYVXzmA3sB4c848NnUz7J7+dl2rGe+Hn3P6DPn5qbGi6
	cNaBl1viLEw2WWYlvS0Sh6JEUk4QxzO9VgiIiQVa2dXmVGvNYQYb0c1c7Z4tdstA+i0dKZXaC3q
	OFonRvIdlEICNL4e+UDqZ5V7qnFzIe5ShSzt+5ORFuqQOgrIQhpMGFdRvnfAdYPM6dx/Oxa89X5
	BvHfJuLtwQ8lu/52JWOksW
X-Received: by 2002:a05:6830:314c:b0:7e7:5e4:ee11 with SMTP id 46e09a7af769-7ebb2346b66mr3906160a34.16.1783435634572;
        Tue, 07 Jul 2026 07:47:14 -0700 (PDT)
Received: from ?IPV6:2601:3cb:981:6560::f5ff? ([2601:3cb:981:6560::f5ff])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb544a26basm14184174a34.18.2026.07.07.07.47.13
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2026 07:47:14 -0700 (PDT)
Message-ID: <c718cb16-580a-42ba-b402-3954a5155862@gmail.com>
Date: Tue, 7 Jul 2026 09:47:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: Daniel Crone <dcrone215@gmail.com>
Subject: Braille, sixx or eight dot
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: e574b9h0CQKlxTqF8O1mXeSGISkeCxh-DAC41w2eR_c_1783435635
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20251104 header.b=ebGR+BRF;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 dcrone215@gmail.com designates 209.85.210.42 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.61 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=3];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4000::/36];
	MAILLIST(-0.20)[googlegroups];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bncBCFJ3VNT5EIBB6VCWTJAMGQENZOKWTI];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dcrone215@gmail.com,blinux-list@redhat.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dcrone215@gmail.com,blinux-list@redhat.com];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[blinux-list];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F00571CD17

Using Orca, is there a way to switch to eight-dot Braille?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

