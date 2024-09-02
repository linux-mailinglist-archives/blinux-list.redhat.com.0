Return-Path: <blinux-list+bncBDH4HHVNTACBB5VI2S3AMGQEFAO5JCI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC10967D53
	for <lists+blinux-list@lfdr.de>; Mon,  2 Sep 2024 03:27:19 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6c357986fc8sf22029226d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 01 Sep 2024 18:27:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725240438; cv=pass;
        d=google.com; s=arc-20240605;
        b=CgtyZOBzD6ZpXy26HMv4W1XYMqfwLHzHtUH+z8bGYc8CzU9kGczSz74blrT+8+fc0U
         mxVn7421ysFa2vv42fgKd8rcbAMiQKk1+8DydouA7fkqp/qMkdDIlRESmHgTTq5LyF4G
         HgB2cKSC9DpdYz7OLxyemeW8irldQIYUVmc41YQJns5PbJcVCjAsm4hJGp1nStwAYQR7
         j3gs4E0kMV2+grIsWZyNCdnViwzraaTeXULWrKVVCCsesWDoXPs24VGm6mgZE6SPgQUL
         eI5VMvyaiONv/hKam0tgYT53j7nven/VF/1kaemQyy5C0mAYG6Pvou7iuKgCUWv2RHrN
         4oXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=fP34g2aox4bexOh3U0aM/1JLhiaiD44P6NNOirMpqlo=;
        fh=PgjVN02oncftWz7S5D7gMcDYi+OvJxB9FLImW2xvu00=;
        b=hWH29TOUDXiZqSd8KLJLx2+B+jQQbOhypsgnGjdlSgaUgRZLcJtSwoe5o5SHK57i6q
         wLRcun+4C2PXqpd0mm6H/OSQZgE9pVGqPQp8KhluMH672sHvyZYSwPZ1DPmfA0h07DL+
         3l9uQ2sxAk4c6xeJexDAHhVKcj4PeX7IB+vUdapDrlWfSXhTwwAyzHhDQRGd/zTRONeE
         VXhORvF1GRYVxj2PVceWEwMaNhzi2dmmHa0K5x2MCpY64UHKTGwCIU3mBbsIayS+SGEm
         iwpKCyATD77WCPoFUx0mstThNxU/myoDDOaIISOZVefvFjuF/+hKAenf5HK8LX9sQnFx
         Z6+Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of edhoari.s@gmail.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=edhoari.s@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725240438; x=1725845238;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fP34g2aox4bexOh3U0aM/1JLhiaiD44P6NNOirMpqlo=;
        b=A4PMswWmFiyObDbcSqHsqsGwNWUZxxKtrxOmjNH7sqULckgQNTD89ezROVF4Ow6J6D
         MXX6BwW1yxrM1u9Gm0znqMznNL2i+EgfZcslMC7j7S7bFWyaP/VmH5U/1uT5ZTFIjF7X
         0BpfF37BxCaPeBNlEHOqKLnZ79W1zRNRbhfYA9Nn+78uV3Xit5rNUCsd1jHu0YWZh40h
         yQ1Q7yVpmqH8puJE3GcImrR/Rni+tPpIRwmiAfP6pj7z+BsOBTA3xPSGQSVUsqLZafKB
         C3XW+O3XPs3N3EKqNH6LkoIYLlxYR7PIivgzP6Y877sj/W8cR3/fmxFfsOE1T5SGl2s2
         3mVg==
X-Forwarded-Encrypted: i=2; AJvYcCXJ/FO5jrQMoPH2GVNx5+pe6y9vpVk9Ogny42byVotjE/ebj7hOzZkOYFCI+psuwwkO1taJGQ==@lfdr.de
X-Gm-Message-State: AOJu0YzqHBio+eGqUMGow9YIeuNpfDGu8A4SlFvMPEziNJjaAejfLuEE
	pcip7fvGTPY9+H0W0bB5dDZ1yPUVhLcx/v0mHvNKjYhFmBIHNm1Guv5R97SzVtE=
X-Google-Smtp-Source: AGHT+IHcTpN1IVMV2OcrMFuoFSm+gdVA//l5n/SH5plOP+Fitpc3wj8Eu4KHEkQ0PGXK52kwDDypfg==
X-Received: by 2002:a05:6214:3912:b0:6c3:64b6:3e29 with SMTP id 6a1803df08f44-6c364b6463cmr22413036d6.30.1725240438497;
        Sun, 01 Sep 2024 18:27:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5fc9:0:b0:6b4:ff5f:6a65 with SMTP id 6a1803df08f44-6c33e09b58fls49859306d6.2.-pod-prod-05-us;
 Sun, 01 Sep 2024 18:27:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWvG4bMMYqkNwIc3nGqv03bdS9pZHYPVQGmvKQ99Xn+o3iDYbVKCSA4PSrZCDDAPEML8uHG7SAHCDAkeQ==@gapps.redhat.com
X-Received: by 2002:a05:6102:1607:b0:493:bf9b:166 with SMTP id ada2fe7eead31-49a774d8299mr7632742137.3.1725240437709;
        Sun, 01 Sep 2024 18:27:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725240437; cv=none;
        d=google.com; s=arc-20160816;
        b=j0IINcZ3j7SZCd976/BPpLihZ0feORlmADSER5lMaLeDz/ktdDut9FR7fu4HIEzixk
         BT1fOyzKcBtnRJ3mlPQ2XDg9dov8tbWPeX9j+6QBN2/V7WpvfiwcIs7Vu3EmgSjrHZpF
         4R8MrlYSonp4bCrkuDIJHlEp1ajfk4ik0GycjyDvnSWmjRDhTUBVPc4CGAa3Lta7dYaK
         UiXlH84fmRWZgnf0Wy8xCo4kaWEPx8RWa4Fpg8BxDIdJDTuQ8ElpDKM0ZfpPjzmL+J4M
         ElBsywoutyOWJYB7tgeKunDjK3sjaST+9E+ySKzv3sQA4Dl4FFLAFhL4cPp0OL8TnKX1
         L8jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=dJ+1wJ3iCGQKJNJxx5V/2t19HO2uj2ZB/kte1mENKwI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=mnueWLppXuuR8IlbwKEEWQ/oCGR/k6AwpPyTm50ykOhaU7VfNWq9csSUW1unV2kRBb
         8ORacfSsRkliPDhwbx+T0FTy3dzpNHcWcAjRR1UdauDppann0JtJcWFyJWBSwfe2RoHw
         q7brP4thXpX2LM4TBygC+zUMsoH0Q+C4lM8Sb0p1VpQnyI722yft8I4vBB5CrO57oV+3
         8KGyYSENsfIgiyVDa7AoxjvMb+wCDs8UXm2r+6bYdRg1u+Dys02sk8BqgKBeR1n6P9SX
         P8bk/o0wcHoPi8ipi7tHe1SIwbGjzxF9cmaudTIYyUgtHRPilZlTdlB2pIUz7DFmqmx/
         TmAg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of edhoari.s@gmail.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=edhoari.s@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a806db5f8csi668810485a.577.2024.09.01.18.27.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 18:27:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of edhoari.s@gmail.com designates 209.85.167.172 as permitted sender) client-ip=209.85.167.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-284-5xl9OjZcM02jfVxLkTyQ9A-1; Sun,
 01 Sep 2024 21:27:16 -0400
X-MC-Unique: 5xl9OjZcM02jfVxLkTyQ9A-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ABC4E1955D4C
	for <blinux-list@gapps.redhat.com>; Mon,  2 Sep 2024 01:27:15 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A67A31955DD8; Mon,  2 Sep 2024 01:27:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A3AEE1955E8C
	for <blinux-list@redhat.com>; Mon,  2 Sep 2024 01:27:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2AE5819560A2
	for <blinux-list@redhat.com>; Mon,  2 Sep 2024 01:27:15 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-543-ZXkS3gUeMDm-1fPCGLvufw-1; Sun, 01 Sep 2024 21:27:10 -0400
X-MC-Unique: ZXkS3gUeMDm-1fPCGLvufw-1
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3df07fe03acso2348252b6e.3
        for <blinux-list@redhat.com>; Sun, 01 Sep 2024 18:27:09 -0700 (PDT)
X-Received: by 2002:a05:6871:4e48:b0:25e:368:b5a4 with SMTP id 586e51a60fabf-277d03b127amr6830809fac.18.1725240428893;
        Sun, 01 Sep 2024 18:27:08 -0700 (PDT)
Received: from [10.200.1.239] ([123.231.128.218])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-715e55b9cf0sm6000051b3a.96.2024.09.01.18.27.07
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Sep 2024 18:27:08 -0700 (PDT)
Message-ID: <e6545dbb-85f9-48a1-864d-c85cac275088@gmail.com>
Date: Mon, 2 Sep 2024 08:27:06 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: no PC speaker beep on startup anymore
To: blinux-list@redhat.com
References: <cc05931d-51da-489c-93d3-b8a831598ace@gmail.com>
 <b15f6fad-51a3-305d-b0b6-24554cbf0c7e@hubert-humphrey.com>
From: Edhoari SetiyosoEdhoari Setiyoso <edhoari.s@gmail.com>
In-Reply-To: <b15f6fad-51a3-305d-b0b6-24554cbf0c7e@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: edhoari.s@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of edhoari.s@gmail.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=edhoari.s@gmail.com
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

Actually I want the beep during startup (GRUB). I usually need it to 
differentiate if I boot to main drive or flashdrive.

It's not like I cannot live wihout it but it's a nice thing to have :)


On 02/09/24 03.22, Chime Hart wrote:
> Well, you may also want to install "beep" and "pcspkr" Seems there's 
> another program, somthing like abeep?
> Chime
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

