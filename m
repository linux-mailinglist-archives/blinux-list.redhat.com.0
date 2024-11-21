Return-Path: <blinux-list+bncBCVPTHE7K4IKDOX2XEDBUBC4L4DM2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 533819D45CA
	for <lists+blinux-list@lfdr.de>; Thu, 21 Nov 2024 03:38:27 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d41cbccd23sf7171486d6.3
        for <lists+blinux-list@lfdr.de>; Wed, 20 Nov 2024 18:38:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732156706; cv=pass;
        d=google.com; s=arc-20240605;
        b=NNu6JVP5T56vEVULoMYMtYhCnn6yj6UbHrFVXAtj80cvB5dlj4YLgET+tftXdJ97n3
         J46rQsI3h04TPV3J34k1Xt8jLJOc/CP6d0s6QYtWdVeHeWvp2GFsFIIJHac7tl3HbxJg
         gNOBYAi8azxEJLj6e3u9UBsmeom8YLNjEbkoJpEeaPWvTQDAan/ilmibJo0m6FTNTn+L
         pq9T2th+gHSxoCjgQSRsXTVxhxUcQXUgjLh9WUlZ/O6offuOWYC5IU/jxD3AAGuiZ/cv
         +2o8KaTNf6m1i1Qd69DL8VyAEtCl5Wj0h3tL7OJTIgfIntQ+1RRONNUBPSriR9FZhnfM
         5xNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=XDVk81Zin3El87ewz+A9ISxZ+9WXrd15ZWHP//zK5Hc=;
        fh=SaxGbZ13bDMjaMmK1ZG09j5ZRYa1EePLUDsg0jEHrkQ=;
        b=JlA7UgonXHrldn6mVKTfYwrBNbq6zzeFytIHhvQkDrWQDfzMqyU9U/r3jTV2XnTjsZ
         VCzQgii1js0oNi1BD64uHbEB0cIhk7RJf9zW48ELoEe37q6BT+fHI6ympokFeODJtfaS
         p5XJRtvTUJjt7sRAsQVZBNh6y4MUjGnidrR58F+E40YbWUQlOdfKPjSRviZN9HdpKxFu
         asRj4MujcPHad1o+NZMuqh6tYa9mfXnsR0D77YMlLZEZStPOiHnQKYsSGVC4SiZnHCAj
         vmXjBzvzXNiSXdRPFsAUP2LKEqz2+jo7DSRrVG8Usb2RMC8DFGOHAQLDqX9pnu3T6/7U
         ARjQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732156706; x=1732761506;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XDVk81Zin3El87ewz+A9ISxZ+9WXrd15ZWHP//zK5Hc=;
        b=m5bQliFeU5hTDnpf6Un6GYhG4/L7KvPI8HdIRG8rlrpz9gwL3E1bPimkRQDZIq3ZRh
         fHawo3nQ7f1PTAMCLZVwcjQrilLfgrjiABOqPMI2zK1NWy7YRoNj2Lz7tlT8fiqGNWeI
         qYhWBsfYVosYVnB73mNYkB2lRgqL2YEZJoDWbsv3AnRZosvY+tv+LizXdYWLI2USFv/F
         ZpHSNl5O4q5QplIxbC4kFTeWf88kdZZYok/qqzoNNvSKCYU0YDLmr938FUERFHXwbJst
         LHy+6yHQbg5SoPnCSafs98gpSKIOYQYcwtl5VRbzPHsv4xdX0S3NQK4HKrpUcTdlzI3B
         iaaw==
X-Forwarded-Encrypted: i=2; AJvYcCU4qZIhRbbbr8onLsf4oDNVEeM2ckV5cmqGUVICG2grfLMzG0+EybCL7KqpQKicIUWieaAijA==@lfdr.de
X-Gm-Message-State: AOJu0Yz8fj4G5iWv/EQAEqDUpm8aHJeBoFqH+VGzK4SFRAtAhSslRjaM
	0WTXdetZh4B1idCvwDjJ8ZcwmyZatmzsopgWnTopGt5DtKUoXXW/AaT3pxSD1bY=
X-Google-Smtp-Source: AGHT+IG13OTFrvx+VKhs4rFMfLf8mu5M8RJiz0DkMBe/A0HIs5vGku0RpZQ9zznHzoPqCfYYLRcS/g==
X-Received: by 2002:a05:6214:21aa:b0:6d4:c6d:17fd with SMTP id 6a1803df08f44-6d43783ad22mr67490486d6.42.1732156705752;
        Wed, 20 Nov 2024 18:38:25 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1944:b0:6c1:7c1d:2ffc with SMTP id
 6a1803df08f44-6d442357632ls6833316d6.1.-pod-prod-07-us; Wed, 20 Nov 2024
 18:38:24 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUG2c6qgAI3McITDnc4WLH77e75HlMoe7QqZcLgzaPgu2s3Gzl5jsdoRnO5erWsksiodudNP5DS9mb/HQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:21aa:b0:6d4:c6d:17fd with SMTP id 6a1803df08f44-6d43783ad22mr67489656d6.42.1732156703898;
        Wed, 20 Nov 2024 18:38:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732156703; cv=none;
        d=google.com; s=arc-20240605;
        b=AS2QjwBOcsLnQ0YimTKYdXLcJFxjCbVBa+U4cqf0wDfJaLrX6tytIAK5dTaI6X2rW0
         UXgyht7QD8vOD0ihvDyHQHh9ZvElg5LabJ3EZQtVobJ3g4TKmS/x7KortZs7CqZeFw5l
         N4EtejVosYHqGI1hwHQO4QTKxIyiBL+5pgZ946v+umeopEMplzS47RMt4XL7UEFSj40P
         Kgn56AM2PcAs/9G0gGJi6HG/JW37iUcLZKGxRsyEib+okyZkhC6npbabFRYo+54tx7pv
         OAVZb/O7UfhPhWiAyiKC3B1+aD/aoP7SItDucaKtZHAdQ68KUG5yXs1txr8OqFa+5vlK
         qaZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=XDVk81Zin3El87ewz+A9ISxZ+9WXrd15ZWHP//zK5Hc=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=AGDRWEYp5jhWIfueB22CPecHBUIqey/wHKatw0Jl/8mbjvOwKm8HJ1GWYl5WaUnN1B
         tu6zyll0arKdm2bn6jcVkzD/kzusNkXK8YslohavW3QE75D5uR2qYCqfZkEhnbdWQjJJ
         ItRqOzHFVG5nUyQ5iJ2jOqNRMjH9ZeGdoY+z6gG++VvnK1d5MBXEkYJFbuCMZwhObWht
         82q3irreC1PJaaGI2pL2Hh2hUGTSjCHUloJ3qv2GaSMwlhxz7naS1WCXSdmB3F4ozXKg
         ucpmfZ0wDcrEh591n0LYJC2uv1Mf9EEUMp28RkGNgWkMnOKYjX2smFp1xaKStT/x9NtM
         UMOg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7b4852c32fesi337061185a.614.2024.11.20.18.38.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 18:38:23 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-70-EAS8Pp0uMo6b8nzYvZuWvQ-1; Wed,
 20 Nov 2024 21:38:22 -0500
X-MC-Unique: EAS8Pp0uMo6b8nzYvZuWvQ-1
X-Mimecast-MFC-AGG-ID: EAS8Pp0uMo6b8nzYvZuWvQ
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8556E19560BA
	for <blinux-list@gapps.redhat.com>; Thu, 21 Nov 2024 02:38:21 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7FED01956056; Thu, 21 Nov 2024 02:38:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7D98D19560A3
	for <blinux-list@redhat.com>; Thu, 21 Nov 2024 02:38:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F277C19560BA
	for <blinux-list@redhat.com>; Thu, 21 Nov 2024 02:38:20 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-329-MZ5FKgc7PRS2ssVqJtpQnQ-1;
 Wed, 20 Nov 2024 21:38:12 -0500
X-MC-Unique: MZ5FKgc7PRS2ssVqJtpQnQ-1
X-Mimecast-MFC-AGG-ID: MZ5FKgc7PRS2ssVqJtpQnQ
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 6B73D40508
	for <blinux-list@redhat.com>; Wed, 20 Nov 2024 21:38:10 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 34A77100BDB; Wed, 20 Nov 2024 21:38:10 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 345D410008E
	for <blinux-list@redhat.com>; Wed, 20 Nov 2024 21:38:10 -0500 (EST)
Date: Wed, 20 Nov 2024 21:38:10 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: A question  about accessible branded distros?
Message-ID: <Pine.LNX.4.64.2411202131050.435046@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: dAAVJKkOEO_kpqWAQ0w1_XXiakT3vxp3pM4DztBLZZs_1732156690
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jEONJvgpibGqzTEN1x84Ls5UfXGomdCCLAi1ZHfnpo4_1732156701
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

Hi all,
Freely owning I may confuse these. I have not given Linux serious thought 
for one of my stand alone  machines until hearing Piper, which was  built 
for DOS, minus latency and so forth.
Still I believe?
there is at least one Linux distro, flint?, that aims to allow one to move 
easily between command line and graphical.  Coconut was referenced 
recently too, although no one spoke of the pros / cons of that package.
Generally speaking is there a pro / con stance to be made for 
distributions  that claim to  even out some of the Linux layers new users 
might find where access is concerned?
Thanks for perspectives,
Karen


