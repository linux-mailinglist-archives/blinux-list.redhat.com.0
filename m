Return-Path: <blinux-list+bncBC3NDNGRUAMRBHEUWKZQMGQEFQUYADQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id E867490922E
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:21:18 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-440cfb095c1sf22847981cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:21:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718389278; cv=pass;
        d=google.com; s=arc-20160816;
        b=TeU1kiS3zQ86mm8nw3XWragGJPeEmxE2BF/4fpWNmi9c+cX1C3jKXd9GmbMA7Ge/Jn
         xLOGlYuUaPUedTzjLE+Q2BXR/wTIeEDqf/tj9jaYcbHQzi+wMAUw9FH0aFO+rgt5XY0a
         QksXU8QA8qgHEXQKCi8BHZ9cEe/4rH5YJg7oQsDhYifD/QmkraQWayocBmExCINqpLyN
         cX1nRvsZ4crAbp8UQZZMW4vNrphshJn7leJfc73T+ezb9+LJznrvJko9Ng+VtMrhdLFN
         ibj3IZu4dLflL4C+zO8XQ11ixhRtkWrBk2vR9ySpR9iW3a1RGEPR0MJ1SPTP6E7xc/w0
         aBrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=8mEUmQpHFrBa33lDe2RO2HVu7HErmC5W2ydsgb4B8A8=;
        fh=I9pFO705UlMwYPzJmJOL8xC3hgia6NEW/flivnlsJow=;
        b=Ekubzq/rPfqA5v8Og3vEvHnVbLxs+sFLMSzsVzgPjtvRvtmw/S/rPiJp74gL6rX4zp
         +xK9p9XaWZZ5Iu2k6QhNLK4EjyURMseTJgh67xVCi5yhfkebuQ486O0V3dGJ/eLMgd9d
         4eyBH/sigJYcFdVRTzse27El7tsJXXSVc6xk6PiL0Jb8S2Xb94fLHUAqvInQQBdgw6Ys
         dvgBwI/3LdSn6uCvuNuhL5l05Fbl1paRX81Iej/ukSn4MJ8cDRCkXpCXGCrQcfwGTRRT
         v+vQb6ALAYnilNIrEnTF5a+VrZjF0mVOKZOgfRBslJ1pmcqKXUcoAygsStXHhDmyVQPX
         pjTg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718389278; x=1718994078;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8mEUmQpHFrBa33lDe2RO2HVu7HErmC5W2ydsgb4B8A8=;
        b=IZZqbtnaHY4Anfqc1H30JK6c9Bfrk7UGCjU2WFhw9L4fnsCp4VnA+C8wttvc+2vKPv
         y9OhVctMccpEmZztrcj0yCizOqImeMBWRGUUxYrUE0daV1WEjEmAbmGo/tLLspz/km8F
         tsXSg8hReZwN6Wz9JMsmRnSIJN0g5x9PkiXQAfn5WoMiGuiWoz6cpiqf6T+300QLuwL9
         jlWtTBYyOMDcGzJiS2YoWfejhrY/HNLK4l/do5esmm0jq1MOwmbWS/N+eclDIscYKVLo
         o9Ri/Suco/R7anvw3q/wxDjNO2kbRMW9kePQlUCNYlAyMQlNgAzK0KjoRqZ5vqaApw8/
         kotg==
X-Forwarded-Encrypted: i=2; AJvYcCXE5WQQqI/YKzs0VR13SvN+EbKal1oSigp5m4L8WI56nFnYD6knEFu97/KErHxVbZ8IWEzrVe8GHkNQezpgpC174CJjPFBpdwrg
X-Gm-Message-State: AOJu0Ywjb1PAiGSEyPDnPW2S+6br8fRJ9MlsPxsP93oGyGP7dpd81wMU
	vlSXPadJmcIBu/kjt4fgfADKSn3ZUt1alQumx6I/zRCwS7ulUmiGLbbNlieDotE=
X-Google-Smtp-Source: AGHT+IEqPk2GHNpWHi2/yBEdiAMLwjfNYLWCqy6QZkVgR5EIhO7UJLvDu9NHuE+2rDw60q3tRP61Hw==
X-Received: by 2002:a05:622a:148c:b0:441:2065:7aa9 with SMTP id d75a77b69052e-44216b6d3f2mr39128471cf.66.1718389277527;
        Fri, 14 Jun 2024 11:21:17 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:1195:0:b0:440:29:dfd9 with SMTP id d75a77b69052e-4417ac3c90fls26073961cf.2.-pod-prod-03-us;
 Fri, 14 Jun 2024 11:21:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUaMIn3ZoLI0ROWfTvXmvFwFNvYhW9Hw0sgQMDOaYPryGGR844MsYPj3kBHQ81k84x5Lmca3CKF3BxegvC5IVpO6EhUbUS0RSEFBvDX
X-Received: by 2002:ac8:7e81:0:b0:441:581b:c10c with SMTP id d75a77b69052e-442168a80b6mr32787171cf.10.1718389276497;
        Fri, 14 Jun 2024 11:21:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718389276; cv=none;
        d=google.com; s=arc-20160816;
        b=KgUi95bSOy5BZdAvdSQ3T5w7CA9W2e9548J84PuvaZoPwCuICVpI0ZCqTJKT+2VRXs
         fwQxWUD5V3wSdnspPUuSKqvvCcZe+kkehztkEYIcouvSKiIrXkQC7AIcURfEZxlR6yr4
         0OMnW3Urfc/LJfo239e/AFmVYO0LX6tv/RYz57tZRqSgjzqCkxa3+g7mdw16pgqtkndC
         cquB0uRhmVetBqB20o0mOKRpQkwyWvYWqGfi9v6YZn9tGEaSf4Q/6sQFri3NlSrfJWdb
         cay2wIuzE/LlB6ud/+ozFFQJO8khpbVw1/+QwoitHI6ClluiUxPAh+MNs1VGTqS+kEk8
         jdRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=RCcMzYJu2nbMujUNFR4vjHCf4fyDSP0HE+kuPIRgdCo=;
        fh=EnmT/XM52Cw5dKgKwAcAwrWfgpvmbC8BORRziwvcwVE=;
        b=EiOQ2xQkyuWnZnE6ujqS7QK0A+dW+EIIIcN9ugLCYm1YhwfICuwFiqhKw0xueI6A4b
         sPI/ZITKrLgEw2823T/r7J02RRB3frZ1H0uRcGM5Wz5AfygxMz6K6Ov/APxhNneXLf+b
         xlr4+Tlpv0t2Ocegp+QZ1e/jyA4Ypb97CJwOdKmhz3g3v5IGtQaeFipvHxACjLrsh88e
         ScupatdKvvsNratVGxDqe70NaGW1k1oqAbG7rAj7gfcIpLrcUW/C3mFcucYc8I9rvjmm
         5mo+o+V8LoDRiC2UrKa6gniw2+4OgHIBaZXWyj+r7iVRTVX1hbOy3DCm0tUsVC9Hjl/T
         2OCA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-441ef3bdb5csi46264691cf.144.2024.06.14.11.21.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:21:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) client-ip=103.168.172.158;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-63-1ReuHIRoOEG8kV85ulCx9A-1; Fri,
 14 Jun 2024 14:21:14 -0400
X-MC-Unique: 1ReuHIRoOEG8kV85ulCx9A-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E277219560B1
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:21:10 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D3AFC1955E91; Fri, 14 Jun 2024 18:21:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D11391956087
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:21:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4C6C21956095
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:21:10 +0000 (UTC)
Received: from fhigh7-smtp.messagingengine.com
 (fhigh7-smtp.messagingengine.com [103.168.172.158]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-332-a8iEs7C6N1WQoZkjmz1Acg-1; Fri, 14 Jun 2024 14:21:07 -0400
X-MC-Unique: a8iEs7C6N1WQoZkjmz1Acg-1
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 57A821140172;
	Fri, 14 Jun 2024 14:14:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Fri, 14 Jun 2024 14:14:26 -0400
X-ME-Sender: <xms:gohsZmrn-EEBE9flpOTmfCQhX3IisqZiDVwvGRr8sqpveJ1xGNatWw>
    <xme:gohsZkrgkUAbklJAn6i7dCCDDn4SJlMve-l2twpsfVmPN55ce_RXMVTkebNd_NGXA
    bKrQ2qflu2b63uZH60>
X-ME-Received: <xmr:gohsZrNTN3Wl7sC9mWR2wOvM-r-4oF7vK-w8mUSJ_qBkIB0NW-SRsU-NHaGEaixD6fzfN1UWodcVQaHN9glmUmvwR9nnbqMN4hs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeduledguddvudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevufgjkfhfgggtsehttd
    ertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghr
    thdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeegue
    fgfeelkeejiedvkeekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhh
    humhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:gohsZl7hqEUYz98o9h2Ws44K2YpjJSB2AmebQmvvYCDwKAim2LyaTA>
    <xmx:gohsZl4tTub4aZgrpFCtXzid25toGXaGidBHok7TqtWN9GtNUb-9hQ>
    <xmx:gohsZlhhmiM0bja5zG7nq9HB2wQByO5MU3rctBs2CHjZrnX6zcsTaA>
    <xmx:gohsZv4T7ltnlKrO1zCGboSxDgmD3XJoMP4l4PdYaBHROiRMqnNV4g>
    <xmx:gohsZlFIouuWoGuMqrQlj5w-5H8yNxNcLpbnhXvLJHQ0MuzwUPW4yufm>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 14 Jun 2024 14:14:25 -0400 (EDT)
Date: Fri, 14 Jun 2024 11:14:24 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rudy Vener <salt@panix.com>
cc: blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
In-Reply-To: <ZmyHH4DeAXMQzthQ@panix.com>
Message-ID: <594ca1fa-85e1-e610-9902-a2049c0555ed@hubert-humphrey.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com> <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it> <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com> <ZmyHH4DeAXMQzthQ@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Well, I cannot find ddg in an apt or aptitude, but thanks, your suggestion 
would save some typing.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

