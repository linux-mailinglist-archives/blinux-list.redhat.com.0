Return-Path: <blinux-list+bncBCLPHQH4XEIRBMXQYW3QMGQEJJ6CI2I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 7475B97ECE9
	for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 16:16:20 +0200 (CEST)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7a9a653c6cdsf888305985a.0
        for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 07:16:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727100979; cv=pass;
        d=google.com; s=arc-20240605;
        b=MAnMORZHvQzi7jlbZ46//4soUPp+eLPXlASHpqFXF9HjlqS66ezuhPFFvYqBoeKyQ4
         PKPhfNKlFZsPA3DkTQFl0lpzkx2SiUa3Q/7/wk5HskB/SxWi4h3+USuhHYDjjFfI/tO5
         DGBcbgyZc5fNK+eps1nQa5ggSdHm7bfmGu8g0gEsDiGYlTvOUEnHQEJawn7yQrvAKsbj
         2pBImNTLo5bVci9q21TUHOf/Ksj6KtpsFVQCU8hKj4upVqEUiI5hGkkQTDv+t/YrYbRl
         5eiTg0TP4p+Q3+RRkmlR/uAyMn9XyzLtsTVTdio+uk5DR2Qm2QCAvXyUjzf1dQqb1bTt
         E8Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=YnpCCIotNmE0xdn/ZImUCxQ1jXQMTHpm6lpuCKKmAGw=;
        fh=N7IhCKrJnuk3NMpuqarg21Y4kV7t6M0bI7qRtw0wwxI=;
        b=d+FuUyGNTHynmh79AUKJjz+Zcr0FT4eEZiGsW8CkB+Kn9QZxG7newJ21xnuIGBPCsl
         1/b5GZWyvNWLV2/w0B4wjEe26j7qHnum9I8dBZWupZOKfox5GEA5Ji3Hf5SzUQqy75g8
         qWLLLg2p0eyhlorrxnDMzGjsecTv+GeFTJQ/5ifaMPoffMsf64M192M+2avyQjXandcl
         /ea/JC+tbdtrewoXEyb2GY9iYd4GxJOJBr0tlN7hH455TXiQMiq5qvgiQiONEMzhPM+4
         NkaknW0+hV1auASgb7itY3RZzlgIWYia36uMy7wc5G1yKoQENnbZgTp+/lNmrve3UBSY
         iRpQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727100979; x=1727705779;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YnpCCIotNmE0xdn/ZImUCxQ1jXQMTHpm6lpuCKKmAGw=;
        b=W+UdiHL8JeG0JiBDBtTWjzZsZ4UIfq8+/qmfehLJThfpPkHM9+JwGJuaWGfsAeC4i6
         D4F4oK2vRLwjgInldflu/R3hPMbGxJJ9iH/9sqQ/6B8MoVyYKpfL72H2PCxn5sJiRjFi
         MVSqyq3WnVryUrpvHOIrZwOzJFpZV6rMsfVchw/s+edjYmF0lSAMmbwnFRny9wCod4I7
         Pqth32g2c8oNo4uKzTCmpzfzJuA/FmDzkTE3Q6lCIIUPmOTInG86P6MxylFbKJyeb2Ez
         rOBAiDiRFbpOexSUZQYyduhaL8RUtmgZQICHSN2ThfjV36AaZvJ7/ZDxyo0Nfix4hn0N
         9GDw==
X-Forwarded-Encrypted: i=2; AJvYcCWwY7m3ruVEnyUaxQtt+jgYFoOGjj6zIMlSxB46HJtLlj0W4ATZEyetxPlKQHU594tx9Z0CpA==@lfdr.de
X-Gm-Message-State: AOJu0YxvBr+PQuSMVH4I88zOdFLXSO/xT9sWRgEiMFSpvCpPaoe/8uzw
	vHXDPl8i4bWR9YL68pva8oqIOJCSuJwaH67o1JfprtLE4bOAzEe1lMkZuID1wts=
X-Google-Smtp-Source: AGHT+IGsxGk/xQqsiOeYwBsVtgoauXuFwpz535cWoJ5Qae32nQfZSthO5HGSumtS51bZj0bzqioJPg==
X-Received: by 2002:a05:622a:15d2:b0:458:2222:a7a2 with SMTP id d75a77b69052e-45b201b0f4bmr224502861cf.6.1727100978883;
        Mon, 23 Sep 2024 07:16:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:203:b0:440:38e6:c194 with SMTP id
 d75a77b69052e-45b166bd7a3ls43183051cf.2.-pod-prod-00-us; Mon, 23 Sep 2024
 07:16:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUSak7QutA2zRaRcCvp2N17xqpta6DPVPfp15CEmWgSjzY/21V02/0r4p+VkjmrOT2jKWD9EwHyaXopyA==@gapps.redhat.com
X-Received: by 2002:a05:620a:318f:b0:7a9:baa5:f772 with SMTP id af79cd13be357-7acaf562a0emr2707997785a.19.1727100977775;
        Mon, 23 Sep 2024 07:16:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727100977; cv=none;
        d=google.com; s=arc-20240605;
        b=hBpZyWGau75SEqbbRN3UJ3t2f0IZaZZ81kUWcXCxHUcVzRhD4qHWFgXjQ2bKPtugaj
         FqSdUKHQnz9sA3+el5T88l6ci+czItIzTolqWjRwEPkbDA+1nzGJWfNSXTm0aveMzQF3
         3PvsdFJt/D5PxPG+RCFejtMQzwH0Fz7ecX2NNusR60oEiW6F8IbRalnadKyJK0Yn7tUF
         ppCTutC4VmF1xSrUrxGIbLvfsM4QN/t68gr8raI13jWMbVrels601LpHgcOVNZU/bg+R
         utV3uoifvs9d8hFAnDZnYiTONGeRoeYBOITZWG+Hf6af9D9+7QMj7RrJYDDFmm2C1+Ol
         EoMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=oL6/8GqhQ5xFyuXINm+zmmLI2WmQKg8qFP2FkYl7fQU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Qwe5iIkapdZs5OAp9evjS37FhgObVP9z8p5+494dQYbu/n39Ro/Zlv0p3S9KmJ/Rs1
         KYS5EHUDeVGTugu4QAz90tl+uSdpSkHDq0eyna2WEUS24WEqvoRoBkkM6GZKNC26e6g3
         VCmI2LZWNm6IQ4PEptAOb1EHNON1n+EvcFwGUI9s1acWdwiLtGdIZ1iRf1J+/pzJXw3T
         nbHlPnF4f4sMHlSTf4qTyeEFQo26Ebnb59zB69yMKnZM2atjPLkFXqWdu6tuvTc48TK2
         otoT8rIh8luGC4Gzfp6vJtScEepQNpz9/hrltQebUtEZdF8x/0VzDV465MIQA0eqCb3d
         adMg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7acb08c852bsi1099727085a.263.2024.09.23.07.16.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 07:16:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-211-hWhnP9BkNCO-ll6Ejml0wg-1; Mon,
 23 Sep 2024 10:16:16 -0400
X-MC-Unique: hWhnP9BkNCO-ll6Ejml0wg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9394F18E6A6F
	for <blinux-list@gapps.redhat.com>; Mon, 23 Sep 2024 14:16:15 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9146F195609D; Mon, 23 Sep 2024 14:16:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8E8BC1956095
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 14:16:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 06194191916A
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 14:16:15 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-160-sCVjwh6OP3CPwfuFPoc0oA-1; Mon,
 23 Sep 2024 10:16:11 -0400
X-MC-Unique: sCVjwh6OP3CPwfuFPoc0oA-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 9F2D23202E
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 14:16:10 +0000 (UTC)
Message-ID: <bb7f22b5-ea1d-4f81-8702-c8a697101224@jasonjgw.net>
Date: Mon, 23 Sep 2024 10:16:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Drives dropping offline
To: blinux-list@redhat.com
References: <20240923.133713.763.40@[192.168.1.100]>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <20240923.133713.763.40@[192.168.1.100]>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 23/9/24 09:37, 'Rob Hudson' via blinux-list@redhat.com wrote:
> Is this likely to be a sata controller issue, or a kernel issue? I don't have the money to be replacing a bunch of components at once, hoping to throw something at the wall and see what sticks.

Try running a Web search for the error message found in your kernel 
logs. Others with the same controller may have dealt with the issue.

Note also that hardware issues (if it turns out to be one) are seldom 
solved in software.


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

