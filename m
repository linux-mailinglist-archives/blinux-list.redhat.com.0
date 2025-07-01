Return-Path: <blinux-list+bncBDGI3AUYYYCBBBWPSHBQMGQEK3XXILQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADB2AF06BA
	for <lists+blinux-list@lfdr.de>; Wed,  2 Jul 2025 00:56:09 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb0e344e3esf39775476d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 01 Jul 2025 15:56:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751410568; cv=pass;
        d=google.com; s=arc-20240605;
        b=J+A9RlRO/phcOyDe0W0eLmU7H2soPGyBYs9eudilpWQp8KvIroyvO57UQ2IYiz4+PK
         Z71ELxsX5ZOkMKMyjfxU9khW2azStee8ods16SyfZsSOS9iGpyLvw01gJxqnVT8TNIG0
         Dj9+x8m8vZijmGEOvne82NTat5kkQOJpInyuxVIvZDlg3HNjtt2rOHdWwg8iHbZQEkoI
         2RMhZ9Wx4XZissFaATS1qGOo/OfwxT/VgeFnKWwqEXDTw053sUSu4NIkE6LLMBUGsijZ
         SUBQeIrl62f1xM1MewDglzrLyfSKjGNULDJB4WrJIa6okcZQM9sD9m9USMCKbZjF557C
         Nlcw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=wa+qceoRTuGE1o9ftoO/uZf0Js5+dC6n+2ZO2Ikwqjw=;
        fh=kP7PB0EGYbaF3W4u67GIJjpvuJy2NFWRcHatYUl+Vaw=;
        b=S/qFIREq1CueH9bm412K3QmUgW/KwwKLgbzKKpu8999loEbF3ufdnay8w3ld/95mtv
         nHfQSjiFvOfj9opQ4QxShE3r0WHpYxKmH6GxLfCLbRqwlEsVI/djkHK5RZB+/D+SDRTq
         RQYIYIUcoklIiIzk0+W776/D/Vzj2kuI3R6cimV4MBXWEhj3a+ykYMQT12hHy/bKEVrX
         LG+qYS5+fm8iGukuV95EpwwTwxhCGmHxf7xdyve/joL2CBSxkKhQ8kn1WOBG9WcFDnBP
         13+rz/fIkBb4rhFeCEugka//Dwmy8FqTlgFG8d+Nh0nnr/BTyjczfwPclgYDu1pxBmIB
         YUmw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=ZK8PYJwy;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751410568; x=1752015368;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wa+qceoRTuGE1o9ftoO/uZf0Js5+dC6n+2ZO2Ikwqjw=;
        b=jaMo1AHHUT3EzFErVumhouDaPKNVpZz+TNaFlTma1HZuvKOW9XrrFU0K6l+b+SvIDu
         rbfEfDNx9fBMwQH0cjRG9CcLfYmlgseJY4Qq/5tgi7RZ5WH+g6Fy9GR2EjMkDo/i7cEq
         ZXanw0oZjoAtrpOPr+kzqSOeYhveWmPdwUTF84xZWdS9BEfPkpP9g6TGsukwPyo0hKo4
         fZILCuB6d4dydWpmxXi9FSy2k6VL4Lsl15oSdK/GmmwthrQp5J01P1dk6ApeqzEm4BQr
         lreFpJN2af38nH5uT4ExrwbnPYMryzM9gY4lHnRbNogKTvvl/dU2xo/K6fdcb8/dhHHg
         ZRFg==
X-Forwarded-Encrypted: i=3; AJvYcCUYoVN76eiC+tutiUS4o2KAMRAfecvVfwhCkHDAGeGPr2XShz/hg6534Gz9UskezokLQu2oIg==@lfdr.de
X-Gm-Message-State: AOJu0YxOeOaz4jt8Gxf0rsNAdmW8yQe0OFbZiBvAhmfsb0Jph1JiuC+t
	MTXYLZkXNG96kHgmQjhsFUn+m9ENYcLiPJv+oGKBs8D9iNwqYc/IBcrsvP98wXcG+pw=
X-Google-Smtp-Source: AGHT+IF5JVn5PrQmgPF0BIjkxGtpyXxiELYnzO0TcfEK0cjIupP3elNjPO1zigFBAm4augqeuVLr5A==
X-Received: by 2002:a05:6214:500f:b0:700:c1c9:9c24 with SMTP id 6a1803df08f44-702b17dfc9dmr6404746d6.14.1751410567350;
        Tue, 01 Jul 2025 15:56:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfTFRaopBlpv0fBMj3RTPJA1jBBigPbsWrhMUfLTduBNQ==
Received: by 2002:ad4:5ce8:0:b0:6fb:4df4:35dc with SMTP id 6a1803df08f44-702af7dcff6ls6254066d6.1.-pod-prod-08-us;
 Tue, 01 Jul 2025 15:56:06 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW6Vph6r03rpD/mkMQTTTXwUO00Pqi74fh5cKfsR6vE1Dk4uNEt0afIy6BX59NUgY2mwt54LvvgAQ0XJw==@gapps.redhat.com
X-Received: by 2002:a05:6214:2627:b0:6eb:1e80:19fa with SMTP id 6a1803df08f44-702b178fbb7mr6648216d6.1.1751410566461;
        Tue, 01 Jul 2025 15:56:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751410566; cv=pass;
        d=google.com; s=arc-20240605;
        b=Tu1zxywvpwivWnjJjZXJUg//fSjPwOiIR7gcqQq9YJEE7gSNCMXo9nkEs50RWn9Bxh
         /F/aSSM0rLtZAdS5whckCsiu5M0myVmOJz+m/m+g6X3g0ZFeLFvK6OG75kXAD9+YEq8G
         bjEjD26dxCWnggGAK2bl00xDUSZvMYmgRzURiHst7mxNFOky0OOZnzmrIV8ZhEnrk43i
         AK+3A0TTCLX2uVDwEq3WoQbyjt+jJSgLRFsjzRWwt5z4qT9Vqn4xLZ26sNNgtsUsZ5Lc
         R8HhePvAe1JGNx60/amdAI/jyIRCRmJfekwIoQx7EAxmqTkhV6ESkAZ9JsETI2G/xwSa
         jEpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:dkim-signature:delivered-to;
        bh=ZIE9eGAZLdMxO8UJ7w8CxAoWiqlx99Zflgkc4qNUHV0=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=VEJcpkvFrPkwUIF2tf3o3TxJDJJmdz2Reukszc9Jm3y88mXOA/9AF78I/G9uPtvKHf
         mY8JbbsM/HcgzdlWOkPTAp3syjFsZwRW+u+9BHzjhVMgyFevzEPE6IZk2A7uN0lS4Obz
         UceskLKkTpA0aBgRAgaRE9I7fvBoHSD2lej7slRj5DPTz+bin9CTxuGZq8eRR+QpR8wR
         7OY2R+W1vpSDvLHMxNNvXkbXsm+q8vHr21pbUn6nIjCTZuajbI4FJf0+4gUZwjaw0EF3
         4HG8/gdnyxpLzm7Cxa6/ENMUrSquRn+jEMbn9kMEmwgP87CABhFhADi+/KxrrddR6zEc
         OjeA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@panix.com header.s=panix header.b=ZK8PYJwy;
       arc=pass (i=1 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass fromdomain=panix.com);
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6fd77299eb6si130207686d6.136.2025.07.01.15.56.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 15:56:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-677-bCHubX01N7Koi7WYxcDbMA-1; Tue,
 01 Jul 2025 18:56:05 -0400
X-MC-Unique: bCHubX01N7Koi7WYxcDbMA-1
X-Mimecast-MFC-AGG-ID: bCHubX01N7Koi7WYxcDbMA_1751410564
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5F94D195F172
	for <blinux-list@gapps.redhat.com>; Tue,  1 Jul 2025 22:56:04 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5B13D1956048; Tue,  1 Jul 2025 22:56:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5825E195608F
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 22:56:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D14C9180AD7D
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 22:55:44 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751410544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ZIE9eGAZLdMxO8UJ7w8CxAoWiqlx99Zflgkc4qNUHV0=;
	b=J+XgISRq+nz2jscnwEfPlSx7KkkzpQjEquBC+rkfqR93CiXL8pLluBkzXWfYjR49Py2Wq5
	iJWSkCSeQf9o4HAORNWyGkIp9rwjgnNS+VbtoW6qgmaGm5TPZ8mMRwxxx9LrZlZS307dEa
	GlyDBQG5xI6ruFsWig+uR2YHFrdcx3sBb9n9RXsc64L4bTaWU37SoUPH+oFBOvEeKyuXHP
	ety6F0H8Sknov0AHtlIWhXZkjGusQWxYO8GC/eWWhvjPWaEHjU2Ooh+qo7fFPHMj+Nabj4
	Mc2DZHExRTdKLVOZgQr7u1Hls6mcpGmEaYMkFeog+4ZEr3EvbBjNp0MO6ZqcbQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751410544; a=rsa-sha256;
	cv=none;
	b=RTo4Ihr1Z9e38/3GyHl4ik1Ji7yLiX94u5xi2OK0gY76rAgonnIthxSshvLiYjWGVCsYTO
	mnOYtz7Wvhwk69JZKNcOWIe87LYlCgQR839l+CShUAue2KaI5gkkCnk0LOfdiVIKGtHN6V
	AJcw4akiVTzXay+qxlv/2rgHvixZXY7irkmXvImUv5R+up0fNF7sZ4vBs3HU8Hh14Eu+e7
	u49K3b9B8Guyz5jRz+4cWbRyUGGRnX11OSChEYV++psdSAFGNWesc27nP7HslX4q4e6uDq
	doefWiaOdFLPEhjpTjveUIpNg0xWWYr1b7MqEHTshoBbnG97R/+rKEKjpSUOwg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=panix.com header.s=panix header.b=ZK8PYJwy;
	dmarc=pass (policy=none) header.from=panix.com;
	spf=pass (relay.mimecast.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-587-os22CY0dPwWwYFDq8nNhFA-1; Tue,
 01 Jul 2025 18:55:42 -0400
X-MC-Unique: os22CY0dPwWwYFDq8nNhFA-1
X-Mimecast-MFC-AGG-ID: os22CY0dPwWwYFDq8nNhFA_1751410542
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4bWyzy2Vnjz4prk
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 18:55:42 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4bWyzy2QXDz1QXM; Tue,  1 Jul 2025 18:55:42 -0400 (EDT)
Date: Tue, 1 Jul 2025 18:55:42 -0400
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Seeking Guidance on Switching to Linux for Personal Use
Message-ID: <aGRnbhCHwMfMRRIP@panix.com>
References: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
MIME-Version: 1.0
In-Reply-To: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: pjYeU1ajls8Qz79r3lINP-DZ9HVGkOYkQ2RXZWOaco8_1751410542
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@panix.com header.s=panix header.b=ZK8PYJwy;       arc=pass (i=1
 spf=pass spfdomain=panix.com dkim=pass dkdomain=panix.com dmarc=pass
 fromdomain=panix.com);       spf=pass (google.com: domain of salt@panix.com
 designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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


Abdullah,

You are already ahead of the game with switching to Linux. I personally ended up using
slint Linux.  In my case I was a command line user for years
and am most comfortable with Linux using speakup.  However I recently started using
the GUI Orca screen reader with MATE desktop so I can read previously inaccessible websites using Firefox.

My typical session goes like this:
1. boot the system to start a text console login
2. login and run screen to get a half dozen screens up for this or that
3. Hit ALT-F2 to switch to console 2 and run startx to run MATE
after that I switch back and forth  between my text screens ALT-Ctrl-F1 and
the GUI Mate screen 
Alt-F7  as needed.


Hope this helps and have fun.

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Supreme Court Justice Barrett Blasts Justice Jackson's Dismal Dissent https://limerickdude.substack.com/p/supreme-court-justice-barrett-blasts
Website: http://www.rudyvener.com



On Wed, Jul 02, 2025 at 03:12:24AM +0500, Abdullah Zubair wrote:
>    Hi everyone,
>    I hope you're all doing well.
>    Let me quickly introduce myself. My name is Abdullah, writing to you
>    from Pakistan. I'm 25 years old, and a lifelong technology enthusiast.
>    Professionally, I work as a Web Developer and DevOps Engineer, so Linux
>    has been part of my daily workflow for quite some time, though mostly
>    in a headless, server-side environment.
>    I regularly manage Debian-based LEMP stacks (Linux, NGINX, MariaDB,
>    PHP-FPM), handle deployments, maintain Docker containers, and oversee
>    several web applications and services. So, I'd consider myself an
>    intermediate Linux user in the server context.
>    However, I've been a Windows user for over 20 years, from Windows 98
>    all the way to Windows 10, which I currently use with NVDA 2024.1.2.
>    For a long time now, I've wanted to transition to Linux for personal
>    desktop use, not just on remote servers.
>    I truly admire Linux for its freedom, flexibility, and licensing model,
>    and I feel it's time to make the switch, but I'm aware that as a blind
>    user, this change will come with new challenges, especially around
>    accessibility, desktop environments, screen readers, shortcuts, and
>    overall UX.
>    That brings me to my main reason for reaching out.
>    I'd love some guidance, mentorship, or a roadmap on how to start this
>    transition. Specifically:
>      * Which distro(s) are most accessible for blind users?
>      * How different is the desktop experience compared to Windows + NVDA?
>      * Which screen readers or tools should I get familiar with?
>      * What should I learn first? Are there any key tutorials or
>        beginner-friendly resources?
>      * How do you handle common tasks like file management, software
>        installation, and system settings with a screen reader?
>      * Any must-know keyboard shortcuts or accessibility hacks?
> 
>    If there are any detailed guides, blog posts, or YouTube videos you
>    recommend, I'm all ears. I'm ready to invest the time to learn and
>    would really appreciate your help.
>    Looking forward to your kind insights, experiences, and suggestions.
>    Thanks in advance for supporting a fellow blind techie!
>    Cheers,
>    Abdullah Zubair
>    Pakistan
>    Web Developer & DevOps Engineer
>    (Blind Linux Enthusiast-in-Transition )
> 
>    To unsubscribe from this group and stop receiving emails from it, send
>    an email to [1]blinux-list+unsubscribe@redhat.com.
> 
> References
> 
>    1. mailto:blinux-list+unsubscribe@redhat.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

