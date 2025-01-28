Return-Path: <blinux-list+bncBDYIZZNASAHRBSFV4S6AMGQEK7EAKCA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B180A21005
	for <lists+blinux-list@lfdr.de>; Tue, 28 Jan 2025 18:58:35 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e19e09cc20sf100881876d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 28 Jan 2025 09:58:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738087114; cv=pass;
        d=google.com; s=arc-20240605;
        b=h6ICWj7YUAT9s2GQROI9vn3Z11g9vbmn4cHuR2o8rrHojEuhmjOiz+pCa3XiJAXZmd
         RIRRmlc/PvdtgCfq8cI2qLBXqyDhQU1AKeg4Ww4uey34iA+P1dgOrqbcJ6UTowRJzP66
         1dapWmmej/W0erXLIu8c2gxPTkCK2VLFraUE4NOczxLwyKc6pbNrykgEG9MV4tPVhC3y
         xlUmVKV9nryew37VYIrOP3UHDeic6wkfzynZmgayMzWe6mozgxmWLUg9qSGGl/7daeAC
         fjSAkl9ZM6oF/EEQb+AmWZnQ28STj/m5X3dI2N6hBQHNf9eQwK2Y8wJEiMVmCx0MLnbW
         kP/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=J91mTG2JNaCuRBvs9CHROX4d4CDFP+UeIKSqCVHqMdE=;
        fh=cMOqQdn+v+d2SMdgzGi+QUtvFJeCnNtrpV9Aqa1fHuo=;
        b=YILIZ2tBtear6uT1XNfTG+Qp8FrK5msNCHqFhnuffPRDV7tBEQW+2IqfIfZmJHZphG
         buppPhDlknrVHZrecNDKiPD02sGdBCqp0dmyAFp4DpoJIY4hiAa0FYYs5zv6TAxesaX+
         vcBSG8Tjr+rInWnu35mMazyqqRl+VE08XpYdLUSK75EV5oObaEy5ZlBOhPq1NqQo9F30
         sTA4UWJlvRVVgQ46T1yPM0fKuQaw/X1Jb/Cv7kQXbXhIdrjY47x2VQxt+AYm8OhFbz4G
         U4MmdyHrU0BRIBeCu51AYCW+M5wbslyLUb8okM61A/NZv2LK4OmfKVGevRR/KrhmYnFy
         nyUA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.51 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738087114; x=1738691914;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J91mTG2JNaCuRBvs9CHROX4d4CDFP+UeIKSqCVHqMdE=;
        b=bCvSYodTwEsNTk6b4j6K6drqtiTQ4CVTnka0nllA8S3hF7vvQKsRwN/yWzfcbj9Ap4
         dZvCCknTGdmdHHCNebUH394VKNAu6PZmTkPchW4sF44Klm+H3Cuy7iQy/LUVtJBoNT8L
         o5kb/PKlwoKlziHHRBRY1cnRFzCDskBZEzgH6Lu29l4hhMXmd6zUSNypl2JRXck/GZZ4
         kwRpnXmQU3CQEE7Xdh7SO4WJIBXmQSV1Eey8+Tza44wHvLnj0o+ua9oPSSi/Sow6ZjFM
         6kFCtKJUBH0wAu2+RmYjwuVV9Jkn172HsRyLG4peJxEwxDa75oQoyePt+E1kShUZ2U5V
         LGZg==
X-Forwarded-Encrypted: i=2; AJvYcCWHMyyDcJg3O1FnhMTnD2GL3d7doPUCh21TtmD32njPw8gm9Xq3hSV+SdXt65EeDoFta6yLpw==@lfdr.de
X-Gm-Message-State: AOJu0YwoAbkX+TzTBfF63purfCR54c3tQcQD0Ognzj5IVEt54iA6vJow
	OFzFZFOsevWX+0TsM14td0EkgnpLdsyCxRbNoSgCvzq31LZmbFSna99sPJ3TMZY=
X-Google-Smtp-Source: AGHT+IELcfc10H7inXtxY3z6bdHof0eznueZ66AagkNIni05IozH0auwixYFmet4Uuz2hiBWLrUz6A==
X-Received: by 2002:a05:6214:2468:b0:6d8:aa52:74a3 with SMTP id 6a1803df08f44-6e243c7320cmr1168906d6.28.1738087113041;
        Tue, 28 Jan 2025 09:58:33 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:9781:0:b0:6d9:86b:cc0c with SMTP id 6a1803df08f44-6e1fa157cfcls69238526d6.2.-pod-prod-05-us;
 Tue, 28 Jan 2025 09:58:31 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWr2WbqHoq3X3esUHKARM3vqasi7qQW/Q5B7dAyyuIdX8jT86T527itKNBg2NXrl0d3Lp2dYfjilWZvTw==@gapps.redhat.com
X-Received: by 2002:a05:6214:1c4e:b0:6d8:9065:2033 with SMTP id 6a1803df08f44-6e243c73301mr1305096d6.31.1738087111747;
        Tue, 28 Jan 2025 09:58:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738087111; cv=none;
        d=google.com; s=arc-20240605;
        b=iw9p10hrodT/YaBll/H85oRhLxydDFVpA/AUw35GfnG8PHn4XFkGl0Hsd1Ov2gxxyx
         ++a1zpA3isUqabzLuJFgCplb9bAUCN8D+JogGEOcqxMs/ioyMVkv5T2Ob1+s4lCysde6
         s7gHQgWZCyr6M7q8LCgQmt38kEA2ErHrz341AI6Jz2ZeNmNAsXpUPIoU7fmZpJ9JNV8z
         G4WEIVWZ7dZa4N/u49INkzd2fIXZknP2mWnGM6GMJ4XLr7rw1YCFJmSCqHyF3unnP7+v
         IDOsU1qSl+OiAvPRx9Wpl6rg2hTJOW597ktCnPD0Q1o/OeVQK/nHlrWBkOyU4ss2ZYcC
         KW0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=Zjz+dHD/6S17ykn17ytt17OerkiLtOmJ3qKEki7v4og=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=LeX+zH0EnZlDC1AbVimR1L6naFCDHONFvjfMHJnAq6TjKfM8MygS98ClWnKMV+UXa3
         heFzMy79Rg4q/m7INy2brq6LrqBJMDO9RokOYHQVLPUUWQjGYLEVqzeRruyOV8yQyeFs
         ByZ59TffoYIuT7a/8VRCPE7ZzaJEHcnj9o+NaGtISZX82AIJ1O6bssVzhi+XpbrYSOSV
         kbCGkqLJAVKHa+a0yJpWIwZy8UdqTIeAs3S4If/FQ9+5jnli/rmBo4X1T3B1okHYzQUx
         zBrYuL1L7/zwgtCB1K8UIQtHFU5/m/AydC97IpZpQD91sAj2cA1xbkI1g6WeYC3jjMGg
         cRhQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.51 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e205df6e2esi129437346d6.244.2025.01.28.09.58.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 09:58:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.51 as permitted sender) client-ip=209.85.210.51;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-669-zskjmjf8PdmJ3RDb-cwyIQ-1; Tue,
 28 Jan 2025 12:58:29 -0500
X-MC-Unique: zskjmjf8PdmJ3RDb-cwyIQ-1
X-Mimecast-MFC-AGG-ID: zskjmjf8PdmJ3RDb-cwyIQ
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EB26A19560B2
	for <blinux-list@gapps.redhat.com>; Tue, 28 Jan 2025 17:58:28 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E518618008C8; Tue, 28 Jan 2025 17:58:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E22E618008C0
	for <blinux-list@redhat.com>; Tue, 28 Jan 2025 17:58:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 58B1E19560AF
	for <blinux-list@redhat.com>; Tue, 28 Jan 2025 17:58:28 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-338-KiheWXbAN5yj2EE0YBPbLw-1; Tue, 28 Jan 2025 12:58:26 -0500
X-MC-Unique: KiheWXbAN5yj2EE0YBPbLw-1
X-Mimecast-MFC-AGG-ID: KiheWXbAN5yj2EE0YBPbLw
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-71e2766994bso3140657a34.3
        for <blinux-list@redhat.com>; Tue, 28 Jan 2025 09:58:25 -0800 (PST)
X-Gm-Gg: ASbGncsC7TRzAzuPR6fqOC7YvGf+EPVECcjTxq1/GQJDZasKl90dAnnFVkdsAH2+Lhf
	xQGZLv4+W1DRpcaupl8rfLgk6ffz4g9hMNNCpnP6y+VwS2kpZd5o+TnTcWfr4d7r6c5hNuBEYbn
	j7cE+iXhpM5Vs2gs1+p7NlZS5ZBAUQ1rL6p2ojndAk9aVBnGnVCG6y1swi0oNyXYY11n3+S7QAM
	eK6d6xifCmrLppudWMCTm1HGKi3wKMAGX48utuBG7p+ykhZWD+xLIfG8I4yXaBoLe5Siq85yi3O
	0pvoNDJSPnQevUH2Y6RxFzKY5ry8YWdQyFzCHWcCS0f/th0VRKtBkMRCvkLloRsQ66LBzU35B1+
	+8Y57T5hwQ0wGcCI0xg==
X-Received: by 2002:a05:6830:6107:b0:71d:5604:2084 with SMTP id 46e09a7af769-7249da5d343mr29438313a34.5.1738087104516;
        Tue, 28 Jan 2025 09:58:24 -0800 (PST)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fa8b559211sm3128344eaf.24.2025.01.28.09.58.23
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 09:58:23 -0800 (PST)
Message-ID: <da0724a4-afb9-4daa-871d-d178cf20ed2e@gmail.com>
Date: Tue, 28 Jan 2025 11:58:22 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: arch
To: blinux-list@redhat.com
References: <Z5iu13C_1hmkuKvD@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <Z5iu13C_1hmkuKvD@panix.com>
X-Mimecast-MFC-PROC-ID: v5E9R-Bv2gMxmC8mNt4nPg_tvBqUcFi9wpX24ppjEVk_1738087105
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OuMP6mwl5KmatWlPj9mGSGMAPF3y1a4HLnGADbRPxtc_1738087109
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.210.51 as permitted
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

thanks for this i just downloaded the latest ISO

this will be my new project.

Rodney

On 1/28/2025 04:17, Jude DaShiell wrote:
> https://archlinux.org/releng/releases/

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

