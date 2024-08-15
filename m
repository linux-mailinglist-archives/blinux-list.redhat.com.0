Return-Path: <blinux-list+bncBDYIZZNASAHRBLXH7C2QMGQEXXQARBQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 590BD9538A6
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 18:58:24 +0200 (CEST)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5d5545ca462sf1129075eaf.1
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 09:58:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723741103; cv=pass;
        d=google.com; s=arc-20160816;
        b=ceKGXO86tOCIu9lVFGywZkfL1mAZfkWtPNRXQgOQaBdpBMqXHaG8BjgkafPlBITlZw
         7j5Xs8RbhWnPjyYnaeKX1KwTFbnCPENyLn/goije7T/zhdJSm0I5RL9V+R3Y6kbq5cZa
         1zTSSbwT7zp5tqXeHPwL97/3ipqjSA8she2IxREIYfcTN64A5x90gfFqKo22E+SijlhD
         6KDkzY1UJyZLDJ0jzszpTfw0OkSJ517zhbNUp43RBZaRtWDGAQlDClVlk92GWVDN901i
         IJNNKKQ+BbI3ItyZKwoZCP5lmRWHK3CaopTO5iiBNECCmJjD5A9z2FuswywW5e8wMXQJ
         n5ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=SmAWdOTacblBL/MRfq4n4Qxp5+z3++WiDsluSThIYOw=;
        fh=mmzK5RAeS9/WatBGumtwxmaJhQmGtVXui6By+b+2hKY=;
        b=Hanq4iA9R138oFaTboOr6vcW6cJ/ioUWsfUCEtolf+20NvgvvOUpA/ChjP+jEVKKnw
         HeUJt3PcREKJlkV4RZWv2b2eyh3TzHtYBEeuKmXngNHvOgEJD9ifYnCGelqPh4fIPBVU
         t033TDETE9QleosriZ4bgkaYcyhKZEIiGzCaq4l5/b1BHzayEBqLw8uxS5GkTec2uAih
         1w7S+GH63s5KJc4+sZIaB3+hKiqMnBHR5WZkhVaCUJWYWYC7OCD+UGarK7B8rmuKiSio
         jKJyYoT30UN31fNmtG6z+/NJ629dZ42wQybQbURoPK0ttn74DmoBJkTF3r51dkdYxPbK
         gDkw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.178 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723741103; x=1724345903;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SmAWdOTacblBL/MRfq4n4Qxp5+z3++WiDsluSThIYOw=;
        b=F5PImEBkCzsRz2fVfWNEpuZ8ZbWkX5Y8niuyDOUB6Q/iH/5z/rE+Ehbejof9muP2hy
         xeVYWIX2sHqzfWl8tAhCDHAleWSqy3p/7vA0mcgx8jGXeUm4MJhl+LPLF4rkBFrVRNWm
         /aa3pjkB9F4gQpEsh1gujMZYGYV+DOXhDb3fJPj3NeWdOxDwWKI2xfdpO5Dg7ADLxj9g
         TAeIUdCJ78bL3iFdbmpwgq9/ddvElT/hiTXGirO3KG6MEF/d3RRGRlI5NnA53uLSkTNS
         LmDD5avdJfh0azn1bUkeL1MGy3WDz/LcS9gW0dXZSA+KLJE6KdvEz35E9gnKCXEGjhey
         f/Tg==
X-Forwarded-Encrypted: i=2; AJvYcCVljAFLKHGU6vVdccUn/27u0L9sAmyouM7EketsVtqcaHh0R3qHaGAPBbnhN/LI6FL1tEH/xAKHOLxeSLGd/qHDoz3Wt8ZyBCFO
X-Gm-Message-State: AOJu0YzhregDB3UQL6SkZI8oaaF0SXxWKd7n3CWn7mXPDCGkhkcXOnOd
	z+kAKPFcv+XMAFmCv5j5Lh19NnkpTzOiiUxRX3NCmu9R5IGAmAoWnSUxoBG9pF4=
X-Google-Smtp-Source: AGHT+IHbJUPDh4zrCKHKdAa7/vtCB/zld+/xEjVo3HwwMTifHdPFW91l/LbA93MGuMkkJOpkr7X1xQ==
X-Received: by 2002:a05:6820:2295:b0:5c4:144b:1ff9 with SMTP id 006d021491bc7-5da9800d2f2mr547454eaf.5.1723741102671;
        Thu, 15 Aug 2024 09:58:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:ddcd:0:b0:5d8:12be:6197 with SMTP id 006d021491bc7-5da88a93b33ls1115123eaf.1.-pod-prod-01-us;
 Thu, 15 Aug 2024 09:58:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWXxxLAJgkLXRxPqAfxwQ5UIjr8IfMfoPSoXkl1u1ax8QlNWvx1kHDSFX9IWHeECht7m+tHttRrus7yj2Tz7GSBnSHyZYBnCqdnBJjE
X-Received: by 2002:a05:6808:1286:b0:3d9:ed9e:ae1 with SMTP id 5614622812f47-3dd3ad752c5mr28602b6e.28.1723741101842;
        Thu, 15 Aug 2024 09:58:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723741101; cv=none;
        d=google.com; s=arc-20160816;
        b=p8oMqVP5mjyEWhDMnyNNqaS6VRMW0W7uYCFtOaJw42pDaYlAtB9nmY5Drj0EcAO/eg
         99SOCmS3i56ihCM2UM4My6s9W3fKd0Tx9kuqPKyC6VwZ3ozoRJI2y6rvo+gVjMXc0e+P
         fwUqjmhAswqyZaheH4g0N7fzXTAZJZT4x2FTOw1l2bcfsaeI7P57x4Xtxx+SJOyekLtN
         0fo5jICpfn+LcrWQIaFvc1JI7TFg/ramdMdXMEpYfdYpyamF+ebDK4jO6M+R4ek3t5nV
         lBgu4FP0Hd6M8iFGGWIJ8W5Jb7ZKoo6TrmA6xrwacs9/d6DhmoAhMKOMZiGFjWQYBdGq
         YEOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=KjNAQHXMLGjBTlv+OuNOKLS6RTDDTN0VhOl31UaMgNw=;
        fh=2YP76y2kQeWdgAZ8uxqAo98RfTWGH7f8o23GrI3K/7c=;
        b=iHO/Wpptg6tjDkSA9cMGcLWYMn8k/8EPrTUvvwph65Q0n9pRtFynJCHHkjxeKu7aP0
         sZWR8A/f7Fmdl3MCUVjqsJNFWczv8TMeBYXaVoNCPWdph/yoFaR1/ZSXKGIdVI/XCaGq
         DIpR3OlESyjuuzetV3IxS/e/5QquujAkSKPp6QYvutCu9kwlzjOiL/OEdsSTesNIljFY
         LuqzqXR5ibwkGC2cR3Ta62ZPAeybve/le0QsQyywAqglhXJqTBjoHija+zas0MWkJS7H
         uOKSp+UEu+J8PmWVjC/irgnkKBdADYg9zEL6ZvQ6zQVR+ZcX7d/XWsWQW1bcGJopeMXj
         MqCg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.178 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4536a07093bsi20219851cf.339.2024.08.15.09.58.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 09:58:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.178 as permitted sender) client-ip=209.85.167.178;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-219-B_xTx1yaNhKPgF987H6twA-1; Thu,
 15 Aug 2024 12:58:20 -0400
X-MC-Unique: B_xTx1yaNhKPgF987H6twA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B0B5F1956048
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 16:58:19 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AAFD51955D47; Thu, 15 Aug 2024 16:58:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A86881955D44
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 16:58:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2402D1955BED
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 16:58:19 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-279-g0HgINtiMI2Hz8RJ7OSDmw-1; Thu, 15 Aug 2024 12:58:16 -0400
X-MC-Unique: g0HgINtiMI2Hz8RJ7OSDmw-1
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3db14339fb0so644441b6e.2
        for <blinux-list@redhat.com>; Thu, 15 Aug 2024 09:58:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWpP7nbYAOUxIwqbLbQaYisgW3XbM0gfYPRaZmcRNwcofuvHuvyixMhFcK4FEAe+eMABTPouXTCo1hcRmmac9uJUW+we13b
X-Received: by 2002:a05:6808:1b09:b0:3d9:324a:3db with SMTP id 5614622812f47-3dd3acd71acmr33317b6e.6.1723741095051;
        Thu, 15 Aug 2024 09:58:15 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3dd33d3fe91sm327776b6e.9.2024.08.15.09.58.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2024 09:58:14 -0700 (PDT)
Message-ID: <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
Date: Thu, 15 Aug 2024 11:58:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus info
To: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.167.178 as
 permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

how accessible is this?

was thinking about installing it on a laptop.

Rodney


On 8/15/2024 08:47, Jude DaShiell wrote:
> https://www.youtube.com/watch?v=irjhV-oWEGQ
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

