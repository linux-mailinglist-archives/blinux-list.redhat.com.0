Return-Path: <blinux-list+bncBCMKFVG4RQEBBZ5LX2WQMGQEAUFDY6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id BF501838C1A
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 11:33:12 +0100 (CET)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-598a658276csf5693578eaf.2
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 02:33:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706005991; cv=pass;
        d=google.com; s=arc-20160816;
        b=m97bTumR/fby1rizfNiYalwuGtmbtwezLLdYMlr8B5kIGYRe3hH9dO0dEgJJ8mPezH
         XGZSSPoqx9Jljr3XB7IsyTqxk8AaIL7cte8nEq0Kvwb5vR81WWvKcSE/IgSS1ibfvJ+h
         19f/+jFXoXt+cOO8LGrymXJonGmkHqH/us9x8BPfprGyJW0ad+1QRn/kon5m+vsbM7t7
         a+vo3Ft/mr2GmFac6iCydR0usZLW5Acl5uQkW/G/cbyyxZqbSkFVXH8GnAP4wyHQqGkm
         oWDVX3XPJbB2vW8lC5BcFlcMZXzkYcFq0ifJkLPGPAXnvvlhQvFV15bqVyeh2djC9qBc
         NNlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:autocrypt:from
         :to:references:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=GZZSxyxO3vew7WO3Evmi+zz7zlqD4evwvMoc8ZO6T5I=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=QvnSuX+1oBHaZzkocSVotUAwT5c0Jfv1a4tT4zVeEu0zC4wVi+tE5KnJzT8MJ7j7oM
         lft4+NKEZ7xvgmgDILYd3cBQEOQXTqqt97fwdRg15t9HiW53djtavxAHNj312bJBsPZW
         RoqCkMjnuHCCxiIGjwUMXTJjs3PQeow2eGhzreUGTZGw4KOTNKiX1PuVGQnX9B0QFtIe
         jZstgTx6O70MY9cYcGxGLtKnmaB4Ad7TI6BrFT1ZmYqhGNrJMbO3KfrTCtLw9bi+QhtP
         tfTdkU0QBG1BpPcqOOkldakUXFWkYDK3S37qa890jpP7leOJea0kwgRmT47QYj4n9BvI
         WynA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706005991; x=1706610791;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:to:references:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GZZSxyxO3vew7WO3Evmi+zz7zlqD4evwvMoc8ZO6T5I=;
        b=vQ9CwoLFOWnXLVSl8QPThGWSQAyGkEnlpJ0zTP8nJHQOKSc69MeXc0GgyB2qo5vYVt
         yM2He8iB54ZTe4O4ydfMRtwvj6G7/xrf3Z6AK5AjOF5l22Q28xJ2WdF/88D+SRHkIX1V
         4IE12+BZD0FhrcX+q+I3JxgZ42Nysv35xqz1bI91+pGZy/8hs9nEvQBAHIUMfacOmDiK
         OVTRNyXRRlMg7C5s+s44m5qJ7octL8BofICXT80UrW3ruo8etgXYuB+QMacImUrfJ+dh
         QWgSXc0KYsNIl+WzUieMqH7HngASG4g/cIYjCOvKvZVPoYThq3i/qpnK2qIWI9I1NzbY
         wwgw==
X-Gm-Message-State: AOJu0YxKGoVKc1Zz+tBc9WePePTssm2sUq5gBiLnhFS9fEn2YGEm+/sw
	2DQJyeTWMHW2MhxFJU/5nUR/Vt6V2vaSsby79yT0TG2dLoo8WaAiWtZ7EqsvYLg=
X-Google-Smtp-Source: AGHT+IHL+T0XKtoM1C6etd+HMYP//LYhZmKuwZKoKfTW0abFHqJaoowt2t3ssLTwZDayF1P/jwKDsQ==
X-Received: by 2002:a4a:a303:0:b0:599:49ec:6d1f with SMTP id q3-20020a4aa303000000b0059949ec6d1fmr3381971ool.1.1706005991499;
        Tue, 23 Jan 2024 02:33:11 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5543:0:b0:599:3bf5:1d23 with SMTP id e64-20020a4a5543000000b005993bf51d23ls310237oob.1.-pod-prod-05-us;
 Tue, 23 Jan 2024 02:33:10 -0800 (PST)
X-Received: by 2002:a05:6808:48:b0:3bd:57a4:c5c7 with SMTP id v8-20020a056808004800b003bd57a4c5c7mr5761437oic.67.1706005990566;
        Tue, 23 Jan 2024 02:33:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706005990; cv=none;
        d=google.com; s=arc-20160816;
        b=hBset3xYaeIy4CWflpCgthBMZkeYABsCt+orgQ7wGrNVu4MWcvXl5JDl6y6ttSzfUy
         nRw0B2X8fBqyA8ChsXZPtEY9n2kDZlBr7WFWGBmAGOTeDqBfTCGzL13kKl4teyzRo37R
         aVYUpI64EqxLQ8Mtwyew+tBY4kfWnBFKDqIw3ODNyDdhfCpKEJc3NI4S2OeeuXZYu+12
         K0j4OWZrQLKrxjIqr4+owNoYIennI8GKgQc3EnrfMNrSxo8AhukBWjQcjZy8STD7kxVI
         ohMvnKsZcKfPwT/m9kMPjcAyy3P/ZlEpx/JWIjlSXwp756GfNT0qZFY3H1sBznaONFpd
         Ua5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:to:references:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=n0Gaw1Dg21IFRuL9qsSx/p82LK61J8uNOb9lvtzbWgI=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Wbci7hNr9R9AH5luxWUuywRNyCwmlz2K5/8DGGwhmS2CdF0hs56jPmtuvkQ+loNaux
         fbr8k31x2pgvsk5BKJB692+YXL1xHxwrbsBrdiWmBqhGfcNtMyRyqC8wgIFc7qWIy1g8
         5pI5j/tHfITKcEIsqIB89IqIPleAs8mh05ti3c1/1xdPh3Wk22ETc4oWYLoXQaV3FSRt
         mfsYGM0JcMQ98ipmJqDVglTPw9yzFjKRcuRxZ+tKBOZC7THeSFAjQ/1v9621F/tb3B1Y
         bAShoSTEwB8/z/SKqcFzGK0xAQzFIBmmpruXEyyqa0cvThawf0VZRu7vwHMCBkZ8nzu6
         oyJA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id f13-20020ac859cd000000b0042a42c6a7f5si3410063qtf.1.2024.01.23.02.33.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 02:33:10 -0800 (PST)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-551-BE3dS5ZoPEe1b3qlNSyPGg-1; Tue, 23 Jan 2024 05:33:08 -0500
X-MC-Unique: BE3dS5ZoPEe1b3qlNSyPGg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 823A9185A783
	for <blinux-list@gapps.redhat.com>; Tue, 23 Jan 2024 10:33:08 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7F5992166B33; Tue, 23 Jan 2024 10:33:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7871A2166B32
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 10:33:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 57E6C837224
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 10:33:08 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-136-RuAdzH4tPFGzY0DphFPLcw-1; Tue,
 23 Jan 2024 05:33:04 -0500
X-MC-Unique: RuAdzH4tPFGzY0DphFPLcw-1
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 3227E636F7
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 11:27:26 +0100 (CET)
Message-ID: <4da55f05-73ae-42b8-ad6c-93c8079bbc5f@slint.fr>
Date: Tue, 23 Jan 2024 11:26:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: A thought for John J. Boyer, one year after his death
References: <14caa5cd-94a0-4529-aa49-6f8dc3cf2668@slint.fr>
To: Linux for blind general discussion <blinux-list@redhat.com>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <14caa5cd-94a0-4529-aa49-6f8dc3cf2668@slint.fr>
X-Forwarded-Message-Id: <14caa5cd-94a0-4529-aa49-6f8dc3cf2668@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
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

John passed away on the 17th of January 2023.

In a few words: Born blind, John lost his hearing at the age of 8, but this
didn't stop him from excelling in his studies and becoming a software developer.
He is the creator of liblouis and BrailleBlaster. He has also founded two
non-profit companies: Computers to Help People, Inc (CHPI) in 1981 and
Abilitiessoft, Inc. in 2006. These websites have disappeared, but fortunately
the time machine has kept track of them, as well as his autobiography.

https://web.archive.org/web/20051124103638/http://www.chpi.org/
https://web.archive.org/web/20230419094208/http://www.abilitiessoft.org/
https://web.archive.org/web/20230307214907/http://abilitiessoft.org/founders-autobiography.html

John, we miss you.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

