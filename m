Return-Path: <blinux-list+bncBCV3N6GOXMCRBUXQ7G2QMGQEAPLNP4A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F73B953CEF
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 23:51:16 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4501f17051esf16028141cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 14:51:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723758675; cv=pass;
        d=google.com; s=arc-20160816;
        b=wgsHC8lsAINDTnzf3Om2U1xwTjWEOIunNU3fPcxtwcbplKGkYNkXC4h6kV0VlzSvdD
         5Lum/kXfwCJf+UtYB17pKff6CtA6FxiejSzJsNWmoqFTGH+YKAYmUiJ1ofYPNh/f+5oL
         xxFl2hAZY/npkKMg9/FrpTx5MezG6DunHIREdEuwg5tHLawMQbURWLHmVFeMQ3DOozqH
         QHrwqa/DZywBfjV1pF/fc009kdJedjYWqlxfXEgqcXrmsdFSpDrpaj+3FF2ooHHImuRR
         VOR8K7ElCUoEy+N0rbyZo30HBR6GIfg9XM1KqMMHCNSHMGqCwazF5n8uA9hL6SfD1OMw
         4L/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=49yKk46JfgzhGRiysZZ6Mw8Do43wOIDjER0vALN4X00=;
        fh=9uAuQ5PgjMZZfqyVqYfF+sHbEiiwoL5tbPdRKQAtwqw=;
        b=p7OpzKK+oLN8OGtyYcD8yzl/1lk2AHs9Js/TC50LXkvj+mGbJptSbLwiE0bvod5M9w
         tkDt/b92UGldlKvK0GHTPBM/D3PfBp2qVi4bHndE/8PPT1vp2DaAQ7lCiE3z6Kv67TxC
         1n44hjgZx04pdaf02bUh8nN7jdpXa/Ppusk056M2C3rSess5lMnNL0cvLWOULHgfuwSg
         phNm52XSJQqIhsw9h2jsdYszoXUXlwFW83UMv+/tLuYBbuUwd8pQlXgz8DB/4YEUKXK+
         Y9Lo43sybeg2mpodHxPJ3yDN6hW6px1XXfT+ekmdZoRnzK8sqkYNIbtVOTAfvmc44niV
         dtCg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723758675; x=1724363475;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=49yKk46JfgzhGRiysZZ6Mw8Do43wOIDjER0vALN4X00=;
        b=ZASyyjcGpkaAAL+xP6BBhFq5Nr81Rsry0qyVLBG7hAZuAXcE15NM5Ki1bFGTi8Cnmu
         7BLFiANRvfpMG7UrP6lJWJpPIETCJIZuM6gK3prfZ9GvF2VRwfrCCbJbKhf2V5hyPSLD
         BGKHj24+Wkla8WiXORidc7klifSvZmsY++LvvA9ATIvF2lrRjyrQnWcsi3ZgofqXFycR
         c0uRF8TbvMt7EgpaSNxiY93OUFN6gCba9mekDnS5l7xXksohZHPn3B7ZU4NnaUBGlcSL
         m9rxPj7+EHb4/O5kVIevrbEGsyLk2RtSr0NiugTZLbI80zpgBMh2cHHEa9WMX32Fn74q
         uDcQ==
X-Forwarded-Encrypted: i=2; AJvYcCXpaipU+CGMa9SV501Jno6Tutw/GAVzoTmXTMVgJHYlkMcVOTa4xVZk1hWK6z9Nw0UKlztzRmUzT95Zc9g9fFjnAMCOAc9mdUud
X-Gm-Message-State: AOJu0YyQSHDe3k5Ua4vkElwv95zlok5F2TgOiNG9aQc8MAbXGH2gE5Ha
	spY3F49MzfCaxAaz3CS9FJTB1X0xjaCesJne5kxBg5mO0QP3XpdoYr9aoOhOyLA=
X-Google-Smtp-Source: AGHT+IHtwER7oCjJMUCGzAWGoUK/MsancX1mXsLjN/70B/SzemcfGqIE6auWVOcp+pEivKrlndO3EA==
X-Received: by 2002:a05:622a:548b:b0:453:75eb:808 with SMTP id d75a77b69052e-45375eb0b99mr4988231cf.19.1723758674923;
        Thu, 15 Aug 2024 14:51:14 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5e47:0:b0:44b:e6db:de28 with SMTP id d75a77b69052e-453674804e7ls22214831cf.2.-pod-prod-04-us;
 Thu, 15 Aug 2024 14:51:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVq4C8MTdabYiLdkCiW7/bS8tn35UTeGEath4s7zCHBZdxbV31yx45fdOE+q2kMP/iayGnvRfq4tTORnfFIJ0knx3C2GCP7G5XudfDb
X-Received: by 2002:a05:620a:28d5:b0:79f:d11:2a4f with SMTP id af79cd13be357-7a5069d49e9mr157565685a.54.1723758673790;
        Thu, 15 Aug 2024 14:51:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723758673; cv=none;
        d=google.com; s=arc-20160816;
        b=rAjZhdZgIxVDKVwuw5z6qMhDFCjvmFcPCaYhDNqvS73hByt2AK4UTW9ksznCfFhRDo
         kTCtsaX9QP5kXvsgyDOU2mtkPt51dCHZXGRregHwElhqJwOM9L5twomyOQE112r6Qmor
         GCsrIUkoW5P44DOfdNclNpd95O4nsJmfMYPbkVeITjUFeGAmWKRn7VH2ATBNXs3/5nH4
         oJJChPn8f9oOQ0IwxPMFl78tIcw9iY3NlFAbFD4F6T3RaigiYG0ek2UA0/D2e+uMre7j
         AcfnmL5B+p2SbWcjg+jsImhlsqxcBH5Sxo7HIdAYgPTmVfZEVj1k9Fpiw/i8sSZE9LZV
         kgEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=ljbINkTY1feXSA8qNoN1xpqhChzpX+xbhwkxYWSaq+w=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=svBNTfkPr7CvtARXaLwYXKiksxrIZEvrlZZ6RNyn46qzC1yM8dZfDtw6j1QtNhxzni
         yC8hhR7Tm4OXMQgeeK7RZhQScSeHJFdqWxzb+JO9tl2RZhiOGLiOHRiw+LR9cpCUJUog
         QQgFLgFKwegloEhw1jNimQZ7ry99OqtbMkg2WZZr11GuSTfzeGaD10ZpGKN97QqOf3ST
         nDAriMXfLUK2kVDZac1etFncxdjGxDJzY5eJvsGd9MRuyxaAfVDGpT5sj4vraM8XRkNN
         O5xR2e3RMRJ/yKbwDeH/eWjhJaAoJdEw+lHzOIt04oL59dU2taYDXMAhtTSbDIxz9SGF
         L+PQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a4ff0b95a6si261800785a.240.2024.08.15.14.51.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 14:51:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-564-XWxks_RGMJu1IPdnt377Pw-1; Thu,
 15 Aug 2024 17:51:12 -0400
X-MC-Unique: XWxks_RGMJu1IPdnt377Pw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1FFB71956048
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 21:51:11 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 19FDD19560AE; Thu, 15 Aug 2024 21:51:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1775819560A3
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 21:51:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 85FC01955F40
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 21:51:10 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-332-J2-qk3Y9OcGwQi3kFn4J8w-1; Thu,
 15 Aug 2024 17:51:08 -0400
X-MC-Unique: J2-qk3Y9OcGwQi3kFn4J8w-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N0X8u-1sHfkU1d9I-00rxeZ for
 <blinux-list@redhat.com>; Thu, 15 Aug 2024 23:51:06 +0200
Message-ID: <0ccde190-b38b-4de4-b6c3-eb68fd16e547@gmx.it>
Date: Thu, 15 Aug 2024 17:51:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus info
To: blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
 <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
 <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com>
 <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
 <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
 <55ddac5c-5f1e-41d8-b0a0-04de9ba2eb5d@gmx.it>
 <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <80016b6e-f9ee-4649-bfc7-e3eaaf9094ff@slint.fr>
X-Provags-ID: V03:K1:zzwyLcFSs0327dofRT6E68487odxplIrKMWX3l/xMHmoB/2wgh9
 Fdc/QAxVsgVqQAGsdeOghCCJLqPv9sDl7o7vPGdjPf80v5x9nM7eazUn6ukmFQJkMcAjQDk
 nADdqpfyhfdd3YQ+gy/COUPdDT6H2z0XLCd0yK6Al2cnmB+pb7aSU4HfNXuAJvn9XwyYfvY
 zt98q6LiFROyGYHV0fV9g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:/YqsPesnepI=;UYRtgZ4nRAyDrXHwA/TBTJ8kzJR
 5nVcorVnWFcLZ8yV+G/ro2zqPpgVKWxOxOiUgRCmWQcpjdzgcDUs6V2BXj0FUY/n5yM8yda64
 stoy6xYlokzWb0OxW22vHN7Zkaj9xu6E1nu5I/OpLwCWYKjK/ujMWukyOWMOiCVmYB36smE9j
 ZyO/j9d0Y5M4c61sYA1K6EdM3eswbnpE48I4RIi+hSpM8vwxaipIGZfmhHEhmYaoz3+u9Ji3D
 tGv4ILPyqp91ySZwmlcSnNFas0GICgs0EfNcBYefEzoBqVXPzcSKF1jrLIjkK2CY3YVSI/4r9
 gJEFpx97oYDOpXzkHKIyYJ8LIYkZCGZjlDrhEO91COgZapcxMkeJdwGXRS0i9hjn+m5GoF5Lj
 WDXcxhZS0w2ZQw8IndId6+XZHvUCE9gCpmNQZ+YfCAWvcYI3OfYxRIZVWgRZhtEpaW+1cmf04
 50ijXuoS08ma1CUZB1iP8DH2xYNF8cI3/vhSvpeHA89BfhilEVhEdWTx3uurKBRfpONdPeOWy
 lb6ye59AGglUZothEFC0ZFPiDlhqL0waxkIwuy84J6FQKzRYU95r6F6D/jRgZk7uUa9sDaN/3
 9lZdR63aPtd/bEK9OHa6ZgKv1/1N/SHW8VhQw//f9SoWrex5UyoPSkW6UieYi01NxJZiENPnl
 noJG3n6r7Yhrl1oXd6rR2rqcH9rcBQE/TT0h5MRuZYvNcp8/lcI/DUY7+2XwDNQ5192VeyiEO
 5dDWLSstzFvuu8LeYHgQG0j1CR9k3+OQPRYFtQP+JWroKBX59/pbE2FDGM8G6yCLtgN21CARW
 puo1xgazDdfIJHfeF43SU6Uvc/23X7rKsevy6GFYZgsPs=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

I did get the message twice, once to me and another time to the list. So
it looks like it did go through, but for some reason you didn't see it.
Thanks for the info.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

