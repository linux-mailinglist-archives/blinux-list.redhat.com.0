Return-Path: <blinux-list+bncBDW4PB6JVENBBDWP524QMGQEHC7XFUI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 815899D19DB
	for <lists+blinux-list@lfdr.de>; Mon, 18 Nov 2024 21:46:13 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46363ba4c4fsf64956691cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 18 Nov 2024 12:46:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731962767; cv=pass;
        d=google.com; s=arc-20240605;
        b=HqnyhKRJbZGBugJl5l+3tW0z0E1GYvaAR9A4oblMfgJtpsnLLjM0F2O+AOan2Xc9J5
         qYsGMWJ9e33WT8uljBnUtWE+o00OffvsWS4HdDWLcpWL/De1XXwpk4st6HNGE9MX6jej
         2nlKcrkmWJH1wyDCNXxtPPGPJl+zKYjmozyyxqoh64bU2i9J5GIoT/vjnSN5cfvA/p1P
         3ZIcmXcYcn9N1DP2D6I1zp8CI1zL5wXq7iHFzC6uId3098cOwzDIIvWrRhMp+GsbB26H
         BZiEb0lK0SGtBFbKOQBAZWa0ID4ofiILrxav2QOL89f/CVqncQuSj4gwsS3ACs8dioM8
         xzdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:subject:from:to
         :mime-version:date:message-id:delivered-to;
        bh=ksyheyL3W0Kc0zIWOOaOq61XZNVUrVH6K6V/UK7UtWo=;
        fh=G8tgNHKK1u1b+d3ypVMUmctDXgfVXFqPv9x71+Pqe3w=;
        b=IDBjUpoL29du4V8+Yrx4N+p19PBUHFIk2A/fB1Qullrs3zilcaxLcWDXyl/ASlVFD/
         ORSAhPvBPYXqcNF8r63dRgpSi4g3cD1kB9jBFySEfyM6t0ODDnwy5stw/EOT9OT5muVe
         Qb55QG3iyTjEAybJYVzlCP+3iiPyDVQuFSefZTFcNKCMwoar0EBiGy2xJNY6fSxic4YJ
         ggZOLAarfcqhmgWiAIEZnVYNX8mKPUSsIXEX/f7MTkEOtoDxRrbmfcLsS+wjNavrApI5
         LGnNCBhLXsDf584pSUnxMwckjM8JibWPC3vUbdyL5HVKMGZ/AB3iw+t1pHS2IiYJ9efo
         cxew==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux@clul.router5.com designates 173.166.91.13 as permitted sender) smtp.mailfrom=blinux@clul.router5.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731962767; x=1732567567;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksyheyL3W0Kc0zIWOOaOq61XZNVUrVH6K6V/UK7UtWo=;
        b=oco51gyoGJIDoBqKy2gfhNHNQDUXOdZek13zeF9Rff3MDAHoMHU7lTiE3HMXkmw8As
         E7BF0ezcC1nu1ZlO3acfCUTvgBe782wPQG0qKl0E6nZnXSnJafrLIzdti3Yah2oPkbso
         0rQI/bgWPrpFF0QgD1ssAyuewEdgOdX+92SqBagySx9mIgz12StyX4RDpVyUlArzwTKz
         ZvKaPlmFYzf2X9dTuzkeJw75ERgDJc9Pg6HnyCGQPOTu9+I3ZWpNXovl9Dt3CfGZtJUV
         TKxSqucXiKBdodbo8uNGxrFgIKa4N6/sK+7Sr39EN4mHNGNlvwZ/KNmCdw1UpAEtb7Ec
         tMgg==
X-Forwarded-Encrypted: i=2; AJvYcCVXRcw5AFyHOA1EhvXUtCGg+BtNZEJ1rYtZcbuNFK2VgkO/Y2fyZA64chwImpTwTzq1Zq7Raw==@lfdr.de
X-Gm-Message-State: AOJu0YxIBDK7VwaSwicnSiDnbjbNYrR8VT9JWKtpS0+HM6wfoK5eyU1K
	xWiGJF0e3Vt2gjA2ujfM1VNkY+KSuMNWIDKS+kR8RAwPSvwZpwtjJTwHUpSl4WY=
X-Google-Smtp-Source: AGHT+IF5TGgEBMInZGys2eRdeLM0qnYE4VXRlzx/tBn43WZVHhJDx609Qm5TWRG+STS4LkTOSNEaug==
X-Received: by 2002:ac8:5d55:0:b0:461:2897:1e0b with SMTP id d75a77b69052e-46363e97efcmr233891671cf.38.1731962766984;
        Mon, 18 Nov 2024 12:46:06 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7c52:0:b0:461:428c:d46f with SMTP id d75a77b69052e-463640f950fls27078341cf.1.-pod-prod-02-us;
 Mon, 18 Nov 2024 12:46:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWrNHFAkM8lpwBUTtEvFwSg4oeCfeVF1tL2e1iwgE2WDDsVAzVo2TVl+oi8o7NF2Te69GCf5Tu4J4yj2A==@gapps.redhat.com
X-Received: by 2002:a05:622a:6119:b0:462:ae89:4695 with SMTP id d75a77b69052e-46363e2db8bmr184121361cf.30.1731962765768;
        Mon, 18 Nov 2024 12:46:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731962765; cv=none;
        d=google.com; s=arc-20240605;
        b=Qe1Vs9cmckzHvHuqtaFALpQyYwdkMHZKotJhDyTFzIz3zq9D09tjb425WZRYKr/F0A
         BgkeVo/VaivgCGFyU8rgXNNa7qFXNhHiW2AWY8d4Cvwgcueff6SL7zaUHndDiE/8eeG1
         5wDC7y8aqjAb2tqCqzdka22gvoP027VLOLDMnXvYcsGtgxA6DVxOD8WAhsLMHmRt5fsX
         0cKrapBx25OmaMvV+SmOHYacbna7sXNYNr+Qs+nQ0L3iFA9vIU/+7kZWQEhkGWELWgiS
         YULu3JbpWEn94wLEMvSD7n8b2/54hQyBzIf8NqSSXHfftRpuEwhmSmA14mOEKQCINKAq
         W0hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:subject:from:to
         :mime-version:date:message-id:delivered-to;
        bh=dp4rji5iLmFBEeQtLQ5iuI8e/tSFH9aXFlb04W6e+6I=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=F2z/ofXmhQnr8DHZkgkFMORiWrXRg0jPlzowaPxOt2WNQzyZ1COX/5GYfUaRcww6zb
         uFuRG2GlffuFzsg2uIdqpEHihnVdyQyo10WSyflDlVdAA0oqkd1i6/b1gH6hrTQKwvkT
         uz1G/FCrKNB/FOcDZji0c/2/S5620O2nAyIfOcYWge6OauZ11E/cczzAf7s/ZyoosEQw
         mIRHNOP+VD9//sk+86wBEDsBMI6299JxPdYWLrBIevE6+UkyCpj8uiREpdNKLQRkSR9u
         apnZbFtfsSRnbJeUQAIWAqvD/GKb9P3uW7Q3TWcs8tVVTiAGqrTEMKtBy5A6rY9fsrwH
         YA6A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux@clul.router5.com designates 173.166.91.13 as permitted sender) smtp.mailfrom=blinux@clul.router5.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46392c3b3e4si4843111cf.364.2024.11.18.12.46.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 12:46:05 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux@clul.router5.com designates 173.166.91.13 as permitted sender) client-ip=173.166.91.13;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-39-uD1W5S-lN7miNu-5iTwqBw-1; Mon,
 18 Nov 2024 15:46:04 -0500
X-MC-Unique: uD1W5S-lN7miNu-5iTwqBw-1
X-Mimecast-MFC-AGG-ID: uD1W5S-lN7miNu-5iTwqBw
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 833321955F45
	for <blinux-list@gapps.redhat.com>; Mon, 18 Nov 2024 20:46:03 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7D8DB3003B71; Mon, 18 Nov 2024 20:46:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7AFF430001A0
	for <blinux-list@redhat.com>; Mon, 18 Nov 2024 20:46:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D65A21953944
	for <blinux-list@redhat.com>; Mon, 18 Nov 2024 20:46:02 +0000 (UTC)
Received: from out.packetderm.com (out.packetderm.com [173.166.91.13]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-547-s_UtDcQkNRKIuHzS6Mg5EA-1; Mon, 18 Nov 2024 15:46:00 -0500
X-MC-Unique: s_UtDcQkNRKIuHzS6Mg5EA-1
X-Mimecast-MFC-AGG-ID: s_UtDcQkNRKIuHzS6Mg5EA
Received: from localhost (out.packetderm.com[173.166.91.13])
        by smtp (5.7.4/5.7.4) with ESMTPSA id 4AIKCDSn091275
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <blinux-list@redhat.com>; Mon, 18 Nov 2024 15:12:14 -0500 (EST)
        (envelope-from blinux@clul.router5.com)
Message-ID: <MTAwMDAwNy5jbHVs.1731960735@quikprotect>
Date: Mon, 18 Nov 2024 17:12:06 -0300
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Cleverson Casarin Uliana' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Linux and NPUs
X-Mimecast-MFC-PROC-ID: hxCldq0LKuLrVsUg03maijLzMjhJWDEAppmo7qcZdb0_1731962759
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4tNvlSbCepwHNUApZ0kpoG9AMcVXYlcRxZnPzMhTHOw_1731962763
X-Mimecast-Originator: clul.router5.com
Content-Language: pt-BR
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: blinux@clul.router5.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux@clul.router5.com designates 173.166.91.13 as permitted
 sender) smtp.mailfrom=blinux@clul.router5.com
X-Original-From: Cleverson Casarin Uliana <blinux@clul.router5.com>
Reply-To: Cleverson Casarin Uliana <blinux@clul.router5.com>
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

Hi, as you know, one of the components of some new processors from Intel 
and AMD is the NPU, neural processing unit, which is meant to help with 
AI applications. Do you think Linux applications can benefit from an NPU 
in the future? I'm about to buy a new laptop, that's why I wanted to 
know this.

Thanks,
Cleverson

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

