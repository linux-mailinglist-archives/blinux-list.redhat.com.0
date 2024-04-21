Return-Path: <blinux-list+bncBCHY5TMQ6YERB4GESKYQMGQESJQQKVQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 086098ABE9A
	for <lists+blinux-list@lfdr.de>; Sun, 21 Apr 2024 07:21:56 +0200 (CEST)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-6ecf8f675e1sf987730a34.3
        for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 22:21:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713676914; cv=pass;
        d=google.com; s=arc-20160816;
        b=wVLHhcsFFzchuce389wQXhOi/1r2YgUX/I3Qxljvr0G2LEVv764n1BH0qv+ZaGyDBU
         sC3Y2WbthZJEcLpg+jlYpY+9j3GS/uHi7OXVSfF/Gxsp5fAwoB3xMxYvShLekcZfT0UC
         ogRrIDWKrT9l1FQdeFHzUF6u+SkOsdFwonEaxspAHn+J1CPb5ocu/oDgTTC6Q4noClYr
         /JM4Fxuw2SrE9ZpvBDMY6kdHGCMDpgVAe+ohyQCA/zsXLuNI4Fgu1w+mHyyLaAj4Be8F
         O+w5NXD+r/Hm1G8VO7n6zlJgw+D2wWqNAKf2f2254BtLg0+iTXkOcEUCQf9lgHsyq4ZP
         XphA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=db61szylrCwLru1DYFfhR4mkYn3KZ/8sn/hFtk4nXZg=;
        fh=wEsIgStpun5/3l3HJ/iireyK7/Ar9If+gzeR7lthVwc=;
        b=f0XHdIVIgp+Ug02tplvyWCrm3+DdqzibDJFqUWkJpXZFnTdCzSgoh4GboLlAKmLOiL
         tK9W1C+7LjncKmKxgsULULmCxwKHbsDtZOq4S4C8VNAb8QXZEixPjfVWrEsHZGNROY4j
         5vpLpoEsSnHHQD0b6lU9lb5aiJSKB9wqj0t4GIYjxSi+lUgMse9m7FnOYCoqpAkTZCTG
         Dn9g8GbUjJNlHFlCOP7QLNSq1I3yBvXfXttPEtiURQTSvmsEQdAkBKMn7cfFYUT0bQDz
         pgIj+sNzQSWkBiBVBjyPxDg811xpajR6GHVuOMBgMG/BX1PSq5PgV3kPmIh6AX2CIfPV
         6xNw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713676914; x=1714281714;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=db61szylrCwLru1DYFfhR4mkYn3KZ/8sn/hFtk4nXZg=;
        b=vyN6qVJ7ETCNZNjOSXCijWFG+Y/zryVmxV7WEF4Sw+0dIqgFfFy0edw+aBkldVGF2X
         s52fDu95s9yPqZOMvMojwdRq6muWbfDg1g9YAmaHIOMEaM7Xa6OUAlDRroluBQc4dpfl
         RWzLIxWaDEcioTA5a99dU8pjOKanwXNZ/legk1yaXminWQG5V7qRUu5bygq6EiXQOyb/
         7Cp3DZbFPt5rjC8HKmYshh4ZrlxsKgH39A1IwuY8Zm71E/WDxRjEpY6cCZoXy7cUs81L
         X0OpQ5Zzn27Jg8fOrAKjRSQCeAvhCaIG9+1yIrBd4JnL6OUowtqLsJfiFqfzEO96dgSQ
         VKig==
X-Forwarded-Encrypted: i=2; AJvYcCURpLU3D1N95QrrDSZSw6g4YwdiNWqvk6ce+hOo4LMpp7gekrKP0m2S4E9jDdQvxall2BngSIe1cqdb5tLJmP2mEzeOKEFOe0GO
X-Gm-Message-State: AOJu0Yyi03Ze1iNuvhZCyrc37HYxxrH2SYyQEieT48c5/LBj7bvlo9Nn
	K1GIaykd2eYMd3E5UuT3OFQaCFzuJ1d5zCJQk0I8nf1D+VTyKk0UZLhM1ebuEF8=
X-Google-Smtp-Source: AGHT+IE85G8dt/s9VnFG0taEaVb/Qumq6G8Gpt59Rx1I1LxGf9Fbzk9ClDbjubWjgV4A+JNvCerWSQ==
X-Received: by 2002:a9d:7655:0:b0:6ea:30d6:7433 with SMTP id o21-20020a9d7655000000b006ea30d67433mr9204193otl.21.1713676914293;
        Sat, 20 Apr 2024 22:21:54 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:af06:0:b0:5aa:692f:5e93 with SMTP id 006d021491bc7-5ad0bb9d201ls714475eaf.0.-pod-prod-08-us;
 Sat, 20 Apr 2024 22:21:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVQLP48e0cmXCUDsyGXIeA03nFEiUzsQiNjFrIqm7E73F3R6Z+cs/RJQHQ/5ogi78wMCc67Is+kcULOfSKEvQ0SZGmR2Ybfl0sCDfUH
X-Received: by 2002:a54:4790:0:b0:3c6:1510:f35a with SMTP id o16-20020a544790000000b003c61510f35amr7968117oic.9.1713676912004;
        Sat, 20 Apr 2024 22:21:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713676911; cv=none;
        d=google.com; s=arc-20160816;
        b=iYqfHoUEdIu88dpJkRaQHw/uXLIm8Zh75skQ2pGbDMM4G6bhQHy89E+/dbtMnhsq+7
         h2uSeIDG9kxeGYU6+fpYGUVqH5qnrqJq1snrHvoz1H+ucirELsqnzqhp0ZxfILIp9KHA
         FCrOCiFgOT5Gm1zmeMsjbigD2uyAtkBPxbpYz8aHNWFBjgKT3izz5jUwjTqNfDEj8YV4
         3pPonUx6G0dlcCGUeyl1FEmd9bKRdURXnnDIxojtTIZcMTy02ttBmrP+gUV7YYF54aZJ
         zzps0qPjj01hvbB0opcy3gPttH/k3nfbqnrd/wbZDyk0ZX70XBoc/pjNg5A6mv7AIBVF
         BKpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=zwEcU/D5nqqUQfAQ0tuYBtXXVdnZzTVKLWrATz9JZRQ=;
        fh=oS6EXIHN5tKg4eWRzM5ctkFMITCs5o85+O7VkEhsn/k=;
        b=oC+ptINjKjfqMbNutU5KtDuJCaMki9bYRdTWr4JxqNyP0sUTF2F/iOqcQcM8+b5Pm8
         ig/17flbfbeZqk66s7RUA5ZZL0EAPCjHfpf8Pw2S/fEv4yQU+5aoqE5IN/CM8QUqRg6T
         RRle5LAqYXF2gwLhrOoIsgbAC56BqU9hJf1GVTgAvGTkOS8H0RvQUhx+O6it2PG6xgZq
         ab1JHfkxWvk7J228OLRlYpKbsEIEqYAd/H+3fiJVxeavHy7irLp0wXnSMI6TFNzfBmTl
         KkJnxP4TyThF647jmKzn5cBTU+T9+JDBIia7sDi3rGLkSrM/8Se3uMCP10I4MCmTN3Gc
         zQ4Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id s9-20020a05622a178900b00437a3acd02esi7050239qtk.786.2024.04.20.22.21.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 22:21:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-628-JWVF8S4LOFq9NmbiSljXXw-1; Sun, 21 Apr 2024 01:21:49 -0400
X-MC-Unique: JWVF8S4LOFq9NmbiSljXXw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 59A5818065AA
	for <blinux-list@gapps.redhat.com>; Sun, 21 Apr 2024 05:21:49 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 567E8492BC7; Sun, 21 Apr 2024 05:21:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CA71477F80
	for <blinux-list@redhat.com>; Sun, 21 Apr 2024 05:21:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2763680D678
	for <blinux-list@redhat.com>; Sun, 21 Apr 2024 05:21:48 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-550-36QqsJkGPJyrAV4jDzyYdQ-1; Sun, 21 Apr 2024 01:21:44 -0400
X-MC-Unique: 36QqsJkGPJyrAV4jDzyYdQ-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 6559A3FC29;
	Sun, 21 Apr 2024 08:21:36 +0300 (EEST)
Message-ID: <dfbccac8-123b-4474-a062-bdd4a2321b7d@harrastenurkka.fi>
Date: Sun, 21 Apr 2024 08:21:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: writing yaml visually impaired
To: "Jason J.G. White" <jason@jasonjgw.net>, blinux-list@redhat.com
References: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
 <51c07b57-049a-4256-a757-0036a3355c30@jasonjgw.net>
 <865b129a-17df-4725-aa47-e48387a8f39f@harrastenurkka.fi>
 <f8abb0f5-0fb8-4ee5-98e3-8b2e516b807e@mail.com>
 <172c93cc-63da-479e-9970-602785712507@jasonjgw.net>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <172c93cc-63da-479e-9970-602785712507@jasonjgw.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
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

Is vim there is some add-on available that would adjust the layouts when 
editing yaml files automatically, it's really infuriating if 99% of the 
time is spent fighting with the layouts of the file

On 4/21/24 00:44, 'Jason J.G. White' via blinux-list@redhat.com wrote:
>
> On 20/4/24 14:25, john doe wrote:
>> The indentation will be done by your IDE (block, flow ...), I would
>> focus on the syntax and use yamllint to validate your code!
> I agree. Similarly to Python, the indentation is part of the syntax, 
> if I remember rightly. Use a good text editor or IDE that takes care 
> of the indentation.
>
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

