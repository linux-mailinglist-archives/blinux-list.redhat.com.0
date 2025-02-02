Return-Path: <blinux-list+bncBDGI3AUYYYCBBS6U7O6AMGQECE4H5DI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBC1A24C8A
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2025 04:45:17 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6ebe1ab63sf921416185a.1
        for <lists+blinux-list@lfdr.de>; Sat, 01 Feb 2025 19:45:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738467916; cv=pass;
        d=google.com; s=arc-20240605;
        b=iFXXDO9BW9jIjSmQIJTMtThlHxyqbRh+XIiFDOHkCsZE+WHNnqeGFav2UyW9W1/c+X
         /hdZw9UwO2VVMqI6H0LOEYlS+9Flvgr606SxjYOQLRQRb9KvUHkWzGK6jm/wIAR4plzO
         Cr9QuH0yGyA2sa7OGpcurWUrt4LWkesRk7CjQFm7Z1ri5fOyYJqxESKQRM9C7WtV5A6z
         ypeh5jWuTP8FJb85Arz/R+sM+bIXAHGPZVfV6mGfWm7/R3RT3uUjut9QZVbHfZjb8ym7
         q9c7cMNtCILYnJ2MB676ansnZnKbnZIutvTWGW013IvO9HMFuTg23Vo+4nP+V7ip5ExW
         gtXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=SC5OcBMHe+2JTNuke785ChfCQaho0Bihw5WHg05rkU8=;
        fh=Yx1vFhZD87IBZtdpojSKFZbLMP+CZ6uNvcfIW840i9s=;
        b=QAnt0ywJMBH94bZ8XzojY38rrWygwsc3F2qFeBOZyNMinle/c1duoAUnVK6dM5u6P8
         Gw1FLo6cFlcJmtXshiCbyVVsZqGULGIUtt1NefqV/5LemmRDEvOWPTNI78M/2KYneHXw
         biUUmxMJNUCsHKcd8l/EKg7XFym6IjPHIO0K/ipQQEzMkZCS92a8R3Uks3PMfcYeoIgP
         twd8xoWwq1FP5WrLDgLK+quOSa4NKIkWe9oAXHBCGpH4mGoXq+ROp+uJlOElckYvGVvf
         GW9R5FdbXqcewXctgr628UVvGJ7sjmS5ph/e07/VNDZuwiboq8sT+jP8fmFSnEMzVHQ1
         lwtQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738467916; x=1739072716;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SC5OcBMHe+2JTNuke785ChfCQaho0Bihw5WHg05rkU8=;
        b=QmssKFERc5W0VLkxmpCK6gOqtvFo/dBGcZJfeKdC076kSQZDVBe1lX9niJe3MFyoyY
         qPednbvC3SBzz52HgdgavZlemZKDebNlgADfVEXlKLCDl21qOvrO6uXH+sUqkovWM1bh
         E9eH1T1+3OF5CY8F77gi40zvAUB9ZRYJFOR9H9ge2h4kHtWRXR8pHvsMt94Fet5YmAjp
         PvGOzFsxPhEoUdTwcxNS/ZrQZEb/FRgxh1VVyfirdMIXTcXudR6dLnvhshLm1krLn4Hm
         YAKBDXn01tuAhe7wc9pSPcl0d1jh5hCFD7+hGPXyZeTD+ESP3kxXJOczHrsPtajK8hl7
         58IQ==
X-Forwarded-Encrypted: i=2; AJvYcCWiHagOCYJYEb07ZMv5EHFv3vRCEgomufKYHAjBMjIgl0icLTW0yguZZZq8hbBc0i0W/3hnqg==@lfdr.de
X-Gm-Message-State: AOJu0Yw6eDb8OcNU7fTJzUDFIrA/T+UuNwGrz7G8k/bTBA2cTXY1dJt0
	gxyNhTYwlJdCLT020o8rHem3LDshz3f64+QYYXiblhyEcWxXrXp01VPgkUsEs9I=
X-Google-Smtp-Source: AGHT+IGm6wBG+P9mk/9AG9oQS8YxZxS8DBpPCHHHH+M/dbVX523bwkQZhz6R1BEeHBpHfeFup+8X1Q==
X-Received: by 2002:a05:620a:4693:b0:7b7:7d6:dfe9 with SMTP id af79cd13be357-7bffcd99a21mr2992291685a.48.1738467916312;
        Sat, 01 Feb 2025 19:45:16 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:ee92:0:b0:6d9:188d:1886 with SMTP id 6a1803df08f44-6e251ecbe47ls11308076d6.2.-pod-prod-04-us;
 Sat, 01 Feb 2025 19:45:15 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWebUu0p27hxr78AZzhRooQ46tcdNrGSAyFX64+mSnddTjNFD/bdMiAwOXFLOGP5UbvJsAqYutJ/k9RsA==@gapps.redhat.com
X-Received: by 2002:a05:620a:4723:b0:7bf:f4a5:e21c with SMTP id af79cd13be357-7bffcd726d2mr2815147285a.40.1738467915289;
        Sat, 01 Feb 2025 19:45:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738467915; cv=none;
        d=google.com; s=arc-20240605;
        b=UviPLlERvw2vOgkOetrRyB3+Kt8KFoaVhvZ0UBht6ZdHPXgXS5zseFfEBPxw7vO2Bt
         dX6ux1iu3u6NdKhnHmiEcyT5L2Ufz31n3+oUMpi17PzV294aT2yVMF1d3+ohM7LcZRro
         4EdhhCaB/RwZSUyLnxoqEJCyRMCjAlrLA72yz99cJMB1R5GqtErwncVrcRm2BOWx0BDP
         t28roar16iDMUTEjKBMQtCWlwy5W6awLT943nJS0AttdBbdQVodmDYPn9NAuP1/VO4tK
         woE4AVo8orb5445l7j9sZltV+r6lQd59WdhAH+qrqrSCyAwyq/kPy9WKaycLmf8gwXd8
         1Tow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=l4k7eFQt6jLNjaPuIY4Q2paA9Dq3X5ro/mZ9aEewWTE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=kOeTOCUo/dSXi6C5A6jZodgu6ufR/4l258WwIbSLcyhKz2Yz8ivtVKuOnDUyVlnyqM
         fO1a93hR+73qJ9YWiMPSvkNEjDA8FVDnivCosnowfd9U+IBG9HylNP5EjTN8Y4jj1TR3
         5lFtQ0EzVaimKthp5UxXTi2KE5P1vuNjyaBjFKOg3wQGgLo7LCcGRXRG6OwhgxMMfxJS
         TU0jBOJm+Vt9hdKGK4r8M04OlxMSUaGZSw85+Hw9d2vKF7I0p39f4+Ev6uwaapvr5wnG
         RQDbQ9q2Chd0tX4R++hWK8jaXvY7ykQXeik9E89mPd+6cp8OYoFGzTRBxRHcHRESCygp
         v/vg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7c00a924f36si706323585a.507.2025.02.01.19.45.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 19:45:15 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-357-OeFWuMt5MjKcA88Yp8B-Hg-1; Sat,
 01 Feb 2025 22:45:13 -0500
X-MC-Unique: OeFWuMt5MjKcA88Yp8B-Hg-1
X-Mimecast-MFC-AGG-ID: OeFWuMt5MjKcA88Yp8B-Hg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 23F591956087
	for <blinux-list@gapps.redhat.com>; Sun,  2 Feb 2025 03:45:12 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1D7931944D03; Sun,  2 Feb 2025 03:45:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1B38319560A3
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 03:45:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ABA2719560AA
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 03:45:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-638-MrLf_PXvPoujsZiH4Ldv3w-1; Sat,
 01 Feb 2025 22:45:09 -0500
X-MC-Unique: MrLf_PXvPoujsZiH4Ldv3w-1
X-Mimecast-MFC-AGG-ID: MrLf_PXvPoujsZiH4Ldv3w
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YlwW86Z7Rz3xqC
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 22:45:08 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YlwW864NnzfYm; Sat,  1 Feb 2025 22:45:08 -0500 (EST)
Date: Sat, 1 Feb 2025 22:45:08 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: firefox - filling out a form
Message-ID: <Z57qRK0zdeVGp4X8@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: TEWYIK15CWBPpM7TVQxLr3Y7uWz7CU9FdhQWyfnKShc_1738467909
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NkOBslk03nsaVtPestGrb4Us5k2cD5uAwZOVQYfI8XI_1738467912
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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


Once again I need help, this time with firefox forms.
All the intuitive things I've tried don't work.
All my web searches for this return instructions about automatic form filling, which I do not want.
So can someone tell me how to enter text into an input field?
How to check a checkbox?
How to select a radio button? 
And how to submit?
At this point I'm not going to assume that navigating to the submit button, switching to focus mode and hitting return is going to work the
way I would expect it to after a lifetime of using lynx.

And my apologies to the list for filling it up with novice gui questions.

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

