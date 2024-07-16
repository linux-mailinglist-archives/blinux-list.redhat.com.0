Return-Path: <blinux-list+bncBCVPTHE7K4IMT36XWQDBUBGH6ZPMU@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4EB931FB9
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 06:32:11 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44e0507a7ddsf59317251cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 21:32:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721104330; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1VXBif2L14xSkEsndbqfE20lLIappeyvwz/WTXh2uXLYNSYiOKa4V1BfX/aOT49hg
         vABmEpHtNJ1qPsAIoLn5jLODQGcgcAdsf8G7utdlBKrzyaECPCVRb2EkYhDksbx4qDJw
         eyLxJ2f9TgmaEFW60bmo/FubebvRoHpqNWGpTiFGw733sdCJ6vK+JYNIWGtIJv+xXjCH
         3OaYflVEvNbSXa24nFenFakV1lG3RNkN7BBoQT0a1X3g6WMQzhpTP9q48tKkd4yE5ekP
         wbhQClJn9Izckzom0348XwftHFkGBFSgpDhYBheocmoeJ2ot+fnW9QqZvV+3+g1pRlzP
         TCpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=x8W4EP7AYUKDQ4/k/uyycPZBDYem+uvQW7YzrIErwTs=;
        fh=RxAey8rzWTt2y6CwVpFWhu6QnufCxnYLJHKl06UnO0c=;
        b=Q0eVrJthKr5qqX8Ypd4kGLDdIA/FY+/6emRj2qSk5qLzLtAjULwP3owWfX1LdgsN6R
         lWF/g4d1Q2R86VqQin/qMYIgZGQXYlAkzECQ3GndDz3X/BI2O8s3+coXYWnbZjDFGMRQ
         hL6fPk/JOWEgEWCYkO6beXVFChJJTHv3CjfMSOWXziI1NsQ85MhMIFXXn4dxq00A0s1K
         s3U9oj/8iekRXMtK3oqC8N/qObZ8RguehABpDmkgjb097iTRulcor5KavXhd1UdtutaZ
         pHJOrvSMh0O4Jo1Avz2bMsedvtLNLenQnFzv/rVaP57ZaJsfqzpJZwQYJQtHZqpn8sGU
         XqzQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721104330; x=1721709130;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x8W4EP7AYUKDQ4/k/uyycPZBDYem+uvQW7YzrIErwTs=;
        b=UrTEYhkDopuLhM1XVINmAMEhcgVgQNmAt4yjCeqYJzAKP95nRWKHnnNStI0m2Mcx+/
         ZuJBjfLxjDAKe4kyAqQ7XjEhCu1KXA0LG7N9yTOIS3u8SvAe5AUaJrn6ec1y0deEpHvz
         ZKxRm19mwxjQm7xcL303D8zH0XjyBOHsf3gdp8/XLj+6oQkfwgaN5Nvrkvbh4oGbVANN
         i/49D8OKZqqM3M0ot6fgC/NNXrLahvDepzoZ2TnX8JUaldsVK36LD3wls/DzzQWmVu9D
         /0IevRWwLYlk8xWJcOGTvbMoE67a6uSu6JX/sg5ifS3xNcOe2rW/FaQu+Ob+8NY79UKj
         wEgg==
X-Forwarded-Encrypted: i=2; AJvYcCUAkMN//1Em0w1rcq8tghYke3KABNS1pf0Kk/q4ChFA3SCSDoLf1timwh7hr9vAkzu3OrYnh63P1YV+xLvZVMiTFwP2eqr/f9Oq
X-Gm-Message-State: AOJu0YwBSmFepS8TfYxBy5CMTVK5BgJ7LGpiV6tOKJiNBZTwlntx7+lN
	2zvx0kBFrI9/j976VLHJe1+Ze0K6kRAfyklr5WC2e/thT2FHr0y0f7Om0Stsa5s=
X-Google-Smtp-Source: AGHT+IEQ5lc+rPB5Ex7zOeavr7uhHlaIrylmuMQx4JIxkbIRoRlWtnzRBhMBK0mzh6fyt1opGTetQA==
X-Received: by 2002:a05:622a:14d4:b0:447:df2d:7d39 with SMTP id d75a77b69052e-44f7ac3c090mr13361881cf.34.1721104329900;
        Mon, 15 Jul 2024 21:32:09 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:520c:0:b0:447:e749:8f3f with SMTP id d75a77b69052e-44d07dbea8fls65586191cf.1.-pod-prod-08-us;
 Mon, 15 Jul 2024 21:32:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWl46aVzOW6eR/Mka6RgyhzRwezzymMhHWnzqnpE4orhrfJT0nrJ4Xul3SKjR9B3LZASb4nYOw8GhAQRzvFKYEpKBGv2RUWQEAI6491
X-Received: by 2002:a05:620a:2404:b0:79d:6749:4241 with SMTP id af79cd13be357-7a17b721f6cmr108542785a.71.1721104329164;
        Mon, 15 Jul 2024 21:32:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721104329; cv=none;
        d=google.com; s=arc-20160816;
        b=e3XU+Qjl7NKI7gWfAh8fJoS0paGnV9NDZ2NITYg6hY+G/TuUEgseY75ai9G9JyFZhx
         FLp4oAsZlHctmRrdMcPFYtXwOAluBgzqpGfV0CkiDuwvDkkKn2dMpkNoLDWyQ8ZnKXeH
         /i5LwtuiEmfuAGII2QxRWqhmpw9PTfUH7PAe5KXNqFlY7qCtTuQOGKHtAIGgn6JKBbiR
         eT/oXbleWIHYgLHynPUqtYKvPEw3ccAJBK/8zQd5JPUzUQy3HV9XDdAzAsPoy2PjWWAq
         9Oh/aQOZrqTDqclKiL9zHlZNK48K6nQwSbJdLx3XhbJ0Yk2EPsjFtEJaXcsVVU7/lVsL
         YCDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=x8W4EP7AYUKDQ4/k/uyycPZBDYem+uvQW7YzrIErwTs=;
        fh=1AxjPQcxtlIhkMLAM0kPYF09a9fAE6hQ+5FcnLINsRA=;
        b=qa35i9BpPKhgRoL7mtQEOHeXyYemR9CRHjl1rZzzCXl5LiG26S/qSg+THqV5q5Xxgh
         r4lCuCg8y6wWa5xsHbo9G+vRrumNbjz0H1AxGJ66zVwuD9ZRqX1qJ5mo/osFHOjW7bVq
         M3dEfGx1rtgBlH8WSarxxqKcwu/pcWW/Lfe3s3mgcL6XhAkZNSkPlFriz6DoEID48cUu
         bkCGF1wq1PZiXLiTmTZcvaxzTRqKweYdD9eXHLpjKLDQdxtz2j0cGU01XMqFepSAKD6B
         T6GwVbcb6ZMfifF/l2LkROUmqp7s7pqx0Bnd/fo4s1K24ci/OODRKd6FJneywDdCjuT6
         rdgg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a160c68b6asi663307085a.405.2024.07.15.21.32.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 21:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-26-C4uvtz71Pri0moa65NkkjA-1; Tue,
 16 Jul 2024 00:32:07 -0400
X-MC-Unique: C4uvtz71Pri0moa65NkkjA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 743451955D47
	for <blinux-list@gapps.redhat.com>; Tue, 16 Jul 2024 04:32:06 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 653CC1955F66; Tue, 16 Jul 2024 04:32:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 62C3319560B2
	for <blinux-list@redhat.com>; Tue, 16 Jul 2024 04:32:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B2C721955D48
	for <blinux-list@redhat.com>; Tue, 16 Jul 2024 04:32:05 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-537-SVbgc-RYPnCMb_bw4ltp4w-1; Tue,
 16 Jul 2024 00:31:59 -0400
X-MC-Unique: SVbgc-RYPnCMb_bw4ltp4w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id A9BB644FC7;
	Tue, 16 Jul 2024 00:31:58 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 74DA41001A8; Tue, 16 Jul 2024 00:31:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 747E0100075;
	Tue, 16 Jul 2024 00:31:58 -0400 (EDT)
Date: Tue, 16 Jul 2024 00:31:58 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Rudy Vener <salt@panix.com>, blinux-list@redhat.com
Subject: Re: speakup and elinks interaction
In-Reply-To: <6f2c1979-67f7-039a-efca-d24638f0f5bb@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2407160024450.3555334@users.shellworld.net>
References: <ZpXs8Lk1QKF-3nHB@panix.com> <6f2c1979-67f7-039a-efca-d24638f0f5bb@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Hi Chime,
One thing about saving files in l i n k s is  that you must first hit 
escape, then arrow down to save file as a format.
Personally I always clear whatever the system might have placed for the 
file  name,  Control u or control k depending on your configuration.
Rudy may I ask if your elinks build is the most recent one?
There has been, at least on shellworld's build of elinks a couple of odd 
things with  not only file name characters spoken as you outline, but the 
search key a slash does not work any longer.
I suspect this is a bug in the build, not a speekup thing, because I 
experience something comparative, and am using a different screen reader 
entirely.

Karen



On Mon, 15 Jul 2024, Chime Hart wrote:

> Hi Rudy: Would L I N K S work better for you? I think it supports more sites? 
> I find the sequence of saving file in both of those to be confusing.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

